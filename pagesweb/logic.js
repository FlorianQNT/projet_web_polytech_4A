const gods = ['aphrodite', 'ares', 'artemis', 'athena', 'demeter', 'dionysos', 'poseidon', 'hermes', 'zeus', 'duo'];
const MAX_BOONS = 22;
const MAX_HAMMERS = 2;
const baseUrl = "https://raw.githubusercontent.com/FlorianQNT/projet_web_polytech_4A/main/images/";

// Liste des slots principaux limités à 1
const RESTRICTED_TYPES = ['Attaque', 'Technique', 'Lancer', 'Elan', 'Appel'];

let dataStore = {
    gods: {},
    aspects: [],
    marteaux: []
};
let currentBuild = [];
let currentWeaponType = null;
let currentTabKey = gods[0];

const els = {
    loader: document.getElementById('loader'),
    typeSelect: document.getElementById('weaponTypeSelect'),
    soulSelect: document.getElementById('soulSelect'),
    aspectGrid: document.getElementById('aspectGrid'),
    godTabs: document.getElementById('godTabs'),
    boonGrid: document.getElementById('boonGrid'),
    buildList: document.getElementById('buildList'),
    counter: document.getElementById('counter')
};

// Utilitaire pour normaliser le texte (ignorer accents/casse)
function cleanText(text) {
    if (!text) return "";
    return text.normalize("NFD").replace(/[\u0300-\u036f]/g, "").toLowerCase().trim();
}

async function fetchAllData() {
    try {
        const godPromises = gods.map(god => 
            fetch(`api.php?categorie=${god}`).then(r => r.json()).then(d => ({ k: god, v: d }))
        );
        
        const aspectPromise = fetch(`api.php?categorie=armes`).then(r => r.json());
        const hammerPromise = fetch(`api.php?categorie=marteaux`).then(r => r.json());

        const [godResults, allAspects, allHammers] = await Promise.all([
            Promise.all(godPromises),
            aspectPromise,
            hammerPromise
        ]);

        godResults.forEach(item => dataStore.gods[item.k] = item.v);
        dataStore.aspects = Array.isArray(allAspects) ? allAspects : [];
        dataStore.marteaux = Array.isArray(allHammers) ? allHammers : [];

        initInterface();
        els.loader.style.display = 'none';

    } catch (e) {
        console.error(e);
        els.loader.innerText = "Erreur chargement (vérifiez api.php)";
    }
}

function initInterface() {
    // Remplir le select des Armes
    const uniqueTypes = [...new Set(dataStore.aspects.map(item => item.Type))];
    uniqueTypes.forEach(type => {
        if(type) { 
            const opt = document.createElement('option');
            opt.value = type;
            opt.innerText = type;
            els.typeSelect.appendChild(opt);
        }
    });

    els.typeSelect.addEventListener('change', (e) => onWeaponTypeChange(e.target.value));

    // Gestion des Talents (Miroir)
    els.soulSelect.addEventListener('change', (e) => {
        const val = e.target.value;
        // Retirer l'ancien talent
        currentBuild = currentBuild.filter(b => b.sourceCategory !== 'Miroir');
        
        if (val) {
            const talentItem = {
                Nom: val,
                Type: 'Talent',
                Description: val === 'Ame Infernale' ? 'Vous possédez 3 Lancers.' : 'Vos lancers se régénèrent automatiquement.',
                Image: 'mirror_icon.png', 
                sourceCategory: 'Miroir',
                Rareté: 'Commun'
            };
            currentBuild.push(talentItem);
        }
        updateBuildUI();
    });

    // Création des onglets
    createTabButton('marteaux', 'Marteaux', true); 
    gods.forEach(god => createTabButton(god, god));
    switchTab(gods[0]);
}

function createTabButton(key, label, isSpecial = false) {
    const btn = document.createElement('button');
    btn.className = `god-btn ${isSpecial ? 'special-tab' : ''}`;
    btn.innerText = label;
    btn.dataset.key = key;
    if(isSpecial) btn.style.display = 'none'; 
    btn.onclick = () => switchTab(key, btn);
    els.godTabs.appendChild(btn);
}

function onWeaponTypeChange(type) {
    currentWeaponType = type;
    els.aspectGrid.innerHTML = '';
    
    // Nettoyer aspects et marteaux incompatibles
    currentBuild = currentBuild.filter(b => b.sourceCategory !== 'Aspect' && b.sourceCategory !== 'Amélioration');

    const hammerTab = document.querySelector('.god-btn[data-key="marteaux"]');
    
    if(!type) {
        els.aspectGrid.classList.remove('visible');
        if(hammerTab) hammerTab.style.display = 'none';
        updateBuildUI();
        return;
    }

    if(hammerTab) hammerTab.style.display = 'block';

    const filteredAspects = dataStore.aspects.filter(a => a.Type === type);
    els.aspectGrid.classList.add('visible');

    filteredAspects.forEach(aspect => {
        const card = document.createElement('div');
        card.className = 'aspect-card';
        
        const img = aspect.Image ? `<img src="${baseUrl}${aspect.Image}" onerror="this.style.display='none'">` : '';
        
        card.innerHTML = `
            ${img}
            <div style="font-weight:bold; font-size:0.9em;">${aspect.Nom}</div>
            <div style="font-size:0.7em; color:#aaa;">${aspect.Type}</div>
        `;

        card.onclick = () => selectAspect(aspect, card);
        els.aspectGrid.appendChild(card);
    });
    
    if(currentTabKey === 'marteaux') renderBoons('marteaux');
    updateBuildUI();
}

function selectAspect(aspect, cardElement) {
    currentBuild = currentBuild.filter(item => item.sourceCategory !== 'Aspect');
    document.querySelectorAll('.aspect-card').forEach(c => c.classList.remove('selected'));
    cardElement.classList.add('selected');
    const buildItem = { ...aspect, sourceCategory: 'Aspect' };
    currentBuild.unshift(buildItem); 
    updateBuildUI();
}

function switchTab(key, btn) {
    currentTabKey = key;
    document.querySelectorAll('.god-btn').forEach(b => b.classList.remove('active'));
    if(!btn) btn = document.querySelector(`.god-btn[data-key="${key}"]`);
    if(btn) btn.classList.add('active');
    renderBoons(key);
}

// --- COEUR DU SYSTÈME : RENDU ET PRÉREQUIS ---
function renderBoons(key) {
    els.boonGrid.innerHTML = '';
    let items = [];

    if (key === 'marteaux') {
        if (!currentWeaponType) {
            els.boonGrid.innerHTML = '<p>Veuillez choisir un type d\'arme ci-dessus.</p>';
            return;
        }
        items = dataStore.marteaux.filter(m => m.Type === currentWeaponType);
        if(items.length === 0) els.boonGrid.innerHTML = `<p>Aucun marteau trouvé pour ${currentWeaponType}.</p>`;
    } else {
        items = dataStore.gods[key] || [];
    }

    items.forEach(item => {
        const card = document.createElement('div');
        card.className = 'boon-card';

        let reqString = item.Prerequi || item.Prérequis || item.Prerequis || "";
        let isLocked = false;
        let reqHtml = "";

        // Logique de parsing des prérequis
        if (reqString && reqString !== "Aucun" && reqString !== "None" && reqString !== "null") {
            let rawBlocks = reqString.split(';');
            let finalReqList = [];

            rawBlocks.forEach(block => {
                block = block.trim();
                if(!block) return;

                if (block.startsWith("Incompatible avec ")) {
                    let cleanBlock = block.replace("Incompatible avec ", "");
                    let subItems = cleanBlock.split(',');
                    subItems.forEach(sub => finalReqList.push({ name: sub.trim(), type: 'explicit_incompatible' }));
                } else {
                    let subItems = block.split(',');
                    subItems.forEach(sub => finalReqList.push({ name: sub.trim(), type: 'standard' }));
                }
            });

            if (finalReqList.length > 0) {
                reqHtml += `<div class="prereq-list">`;
                
                let isBlocked = false;
                let hasPositiveReq = false;
                let countPositiveReqs = 0;
                
                finalReqList.forEach(reqObj => {
                    let reqName = reqObj.name;
                    if(!reqName) return;

                    let isNegative = false;
                    let displayName = reqName;

                    // Si c'est explicitement incompatible ou un marteau (les marteaux s'excluent sauf s'il s'agit de l'aspect requis)
                    if (reqObj.type === 'explicit_incompatible') {
                        isNegative = true;
                        displayName = "Incompatible : " + reqName;
                    } else if (key === 'marteaux' && !reqName.includes("Aspect")) {
                        // Pour les marteaux, souvent si un nom est cité, c'est une incompatibilité implicite
                        isNegative = true;
                        displayName = "Incompatible : " + reqName;
                    }
                    
                    const hasItem = currentBuild.some(b => cleanText(b.Nom) === cleanText(reqName));
                    let statusClass = '';

                    if (isNegative) {
                        if (hasItem) { isBlocked = true; statusClass = 'missing'; } 
                        else { statusClass = 'met'; }
                    } else {
                        countPositiveReqs++;
                        if (hasItem) { hasPositiveReq = true; statusClass = 'met'; } 
                        else { statusClass = 'missing'; }
                    }

                    reqHtml += `<span class="prereq-item ${statusClass}">${displayName}</span>`;
                });
                
                reqHtml += `</div>`;

                if (isBlocked) isLocked = true;
                else if (countPositiveReqs > 0 && !hasPositiveReq) isLocked = true;
            }
        }

        if (isLocked) {
            card.classList.add('locked');
            card.title = "Verrouillé : Incompatibilité ou prérequis manquant";
        }
        
        if (item.Rareté === 'Légendaire') card.classList.add('legendary');
        if (key === 'duo') card.classList.add('duo');

        const imgDisplay = item.Image ? `<img src="${baseUrl}${item.Image}" onerror="this.style.display='none'">` : '';

        card.innerHTML = `
            ${imgDisplay}
            <div class="boon-name">${item.Nom}</div>
            <div class="boon-type">${item.Type || 'Passif'}</div>
            ${reqHtml}
            <div class="boon-desc">${item.Description || ''}</div>
        `;

        card.onclick = () => {
            if (isLocked) {
                alert("Cet élément est verrouillé par vos choix actuels.");
                return;
            }
            addToBuild(item, key === 'marteaux' ? 'Amélioration' : (key === 'duo' ? 'Duo' : key));
        };
        
        els.boonGrid.appendChild(card);
    });
}

function addToBuild(item, source) {
    // Limite Marteaux
    if (source === 'Amélioration') {
        const hammerCount = currentBuild.filter(b => b.sourceCategory === 'Amélioration').length;
        if (hammerCount >= MAX_HAMMERS) return alert(`Maximum ${MAX_HAMMERS} Marteaux !`);
    }

    // Limite Globale (sauf Aspect/Marteaux)
    const countRelevant = currentBuild.filter(b => 
        b.sourceCategory !== 'Aspect' && b.sourceCategory !== 'Amélioration'
    ).length;
    
    if (countRelevant >= MAX_BOONS && source !== 'Amélioration' && source !== 'Aspect') {
        return alert("Build complet (Max 22 Bienfaits) !");
    }

    // Doublons
    if (currentBuild.some(b => b.Nom === item.Nom)) return alert("Déjà possédé !");

    // Slot Occupé
    if (RESTRICTED_TYPES.includes(item.Type)) {
        const existing = currentBuild.find(b => b.Type === item.Type);
        if (existing) {
            return alert(`Conflit : Vous avez déjà "${existing.Nom}" sur le slot [${item.Type}].`);
        }
    }

    currentBuild.push({ ...item, sourceCategory: source });
    updateBuildUI();
}

function removeFromBuild(index) {
    const item = currentBuild[index];
    currentBuild.splice(index, 1);
    if(item.sourceCategory === 'Aspect') {
        document.querySelectorAll('.aspect-card').forEach(c => c.classList.remove('selected'));
    }
    updateBuildUI();
}

function updateBuildUI() {
    const realCount = currentBuild.filter(b => 
        b.sourceCategory !== 'Aspect' && b.sourceCategory !== 'Amélioration' && b.sourceCategory !== 'Miroir'
    ).length;

    els.counter.innerText = `${realCount} / ${MAX_BOONS}`;
    els.counter.classList.toggle('full', realCount >= MAX_BOONS);
    
    els.buildList.innerHTML = '';
    
    if (currentBuild.length === 0) {
        els.buildList.innerHTML = '<div style="font-style:italic; color:#555; text-align:center; margin-top:20px;">Vide</div>';
    } else {
        currentBuild.forEach((item, idx) => {
            const div = document.createElement('div');
            div.className = 'selected-item';
            div.title = "Cliquez pour retirer";
            
            if (item.Rareté === 'Légendaire') div.classList.add('legendary');
            if (item.sourceCategory === 'Duo') div.classList.add('duo');

            const imgDisplay = item.Image ? `<img src="${baseUrl}${item.Image}" onerror="this.style.display='none'">` : '';
            
            // Couleur de bordure gauche selon la source
            if(item.sourceCategory === 'Aspect') div.style.borderLeftColor = '#ffffff'; 
            else if(item.sourceCategory === 'Amélioration') div.style.borderLeftColor = 'var(--rare-color)'; 
            else if(item.sourceCategory === 'Miroir') div.style.borderLeftColor = 'var(--mirror-color)';

            div.innerHTML = `
                ${imgDisplay}
                <div>
                    <div style="font-weight:bold;">${item.Nom}</div>
                    <div style="font-size:0.8em; color:#aaa;">${item.sourceCategory} ${item.Type ? '- ' + item.Type : ''}</div>
                </div>
            `;
            div.onclick = () => removeFromBuild(idx);
            els.buildList.appendChild(div);
        });
    }

    // Rafraichir la grille pour mettre à jour les verrous (ex: nouveaux Duos débloqués)
    renderBoons(currentTabKey);
}

// Lancement
fetchAllData();