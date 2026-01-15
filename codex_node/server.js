const express = require('express');
const cors = require('cors');
const path = require('path');
const db = require('./db');

const app = express();
const PORT = 3000;

app.use(cors());
app.use(express.json());

// 1. SERVIR LE SITE WEB (Dossier public)
app.use(express.static(path.join(__dirname, 'public')));

// 2. L'API (Remplace api.php)
app.get('/api', async (req, res) => {
    const categorie = req.query.categorie;
    const type = req.query.type;

    let sql = "";
    let params = [];

    try {
        switch (categorie) {
            case 'armes':
                sql = "SELECT Nom, Type, Description, Image FROM arme";
                break;
            
            case 'marteaux':
                sql = "SELECT Nom, Type, Description, Prérequis AS Prerequis, Image FROM marteau";
                if (type) {
                    const allowed = ['Epée', 'Lance', 'Bouclier', 'Arc', 'Poings', 'Canon'];
                    if (allowed.includes(type)) {
                        sql += " WHERE Type = ?";
                        params.push(type);
                    }
                }
                break;

            case 'miroir_total':
                sql = `SELECT f.Ligne, f.Nom AS 'Nom (Face)', f.Description AS 'Description (Face)', 
                       c.Nom AS 'Nom (Caché)', c.Description AS 'Description (Caché)' 
                       FROM mirroir_face f JOIN mirroir_cache c ON f.Ligne = c.Ligne ORDER BY f.Ligne ASC`;
                break;

            case 'duo':
                // On garde le CONCAT_WS pour que ton parsing JS fonctionne pareil
                sql = "SELECT Nom, Description, CONCAT_WS(';', PrérequisA, PrérequisB, PrérequisX) as Prerequi, Image FROM duo";
                break;

            // Gestion dynamique des Dieux
            case 'aphrodite': case 'ares': case 'artemis': case 'athena': 
            case 'demeter': case 'dionysos': case 'poseidon': case 'hermes': case 'zeus':
                sql = `SELECT Nom, Type, Rareté, Description, Image, Prérequis FROM ${categorie}_boon`;
                break;

            default:
                return res.status(400).json({ error: "Catégorie invalide" });
        }

        const [rows] = await db.execute(sql, params);
        res.json(rows);

    } catch (err) {
        console.error("Erreur SQL:", err);
        res.status(500).json({ error: "Erreur serveur" });
    }
});

// Lancer le serveur
app.listen(PORT, () => {
    console.log(`✅ Serveur lancé sur http://localhost:${PORT}`);
    console.log(`👉 Accueil : http://localhost:${PORT}/accueil.html`);
});