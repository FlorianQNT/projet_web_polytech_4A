<?php
// api.php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *'); 

require 'db.php';

$categorie = $_GET['categorie'] ?? '';
$sql = "";
$data = [];

switch ($categorie) {
    // --- LES ARMES ET AMÉLIORATIONS ---
    case 'armes':
        $sql = "SELECT Nom, Type, Description, Image FROM arme";
        break;
    
    case 'marteaux':
        $sql = "SELECT Nom, Type, Description, Prérequis AS Prerequis, Image FROM marteau";
        
        // Vérification si un type d'arme est demandé
        if (isset($_GET['type']) && !empty($_GET['type'])) {
            $type = $_GET['type'];
            
            // Sécurité : Liste blanche des types autorisés pour éviter les injections SQL
            $typesAutorises = ['Epée', 'Lance', 'Bouclier', 'Arc', 'Poings', 'Canon'];
            
            if (in_array($type, $typesAutorises)) {
                $sql .= " WHERE Type = '" . $type . "'";
            }
        }
        break;

    // --- LE MIROIR (Pas d'image ni de coût dans ta base, donc on ne les select pas) ---
    case 'miroir_total':
        $sql = "
            SELECT 
                f.Ligne,
                f.Nom AS 'Nom (Face)',
                f.Description AS 'Description (Face)',
                c.Nom AS 'Nom (Caché)',
                c.Description AS 'Description (Caché)'
            FROM mirroir_face f
            JOIN mirroir_cache c ON f.Ligne = c.Ligne
            ORDER BY f.Ligne ASC
        ";
        break;

    // --- LES DIEUX ---
    case 'aphrodite':
        $sql = "SELECT Nom, Type, Rareté, Description, Image, Prérequis FROM aphrodite_boon";
        break;
    case 'ares':
        $sql = "SELECT Nom, Type, Rareté, Description, Image, Prérequis FROM ares_boon";
        break;
    case 'artemis':
        $sql = "SELECT Nom, Type, Rareté, Description, Image, Prérequis FROM artemis_boon";
        break;
    case 'athena':
        $sql = "SELECT Nom, Type, Rareté, Description, Image, Prérequis FROM athena_boon";
        break;
    case 'demeter':
        $sql = "SELECT Nom, Type, Rareté, Description, Image, Prérequis FROM demeter_boon";
        break;
    case 'dionysos':
        $sql = "SELECT Nom, Type, Rareté, Description, Image, Prérequis FROM dionysos_boon";
        break;
    case 'poseidon':
        $sql = "SELECT Nom, Type, Rareté, Description, Image, Prérequis FROM poseidon_boon";
        break;
    case 'hermes':
        $sql = "SELECT Nom, Type, Rareté, Description, Image, Prérequis FROM hermes_boon";
        break;
    case 'zeus':
        $sql = "SELECT Nom, Type, Rareté, Description, Image, Prérequis FROM zeus_boon";
        break;
    
    // --- DUOS (Fusion des prérequis pour l'affichage) ---
    case 'duo':
        // Utilisation de ';' comme séparateur pour faciliter le découpage en JS
        $sql = "SELECT Nom, Description, CONCAT_WS(';', PrérequisA, PrérequisB, PrérequisX) as Prerequi, Image FROM duo";
        break;

    default:
        $sql = "";
}

if ($sql != "") {
    try {
        $stmt = $pdo->query($sql);
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        echo json_encode(['error' => "Erreur SQL : " . $e->getMessage()]);
        exit;
    }
}

echo json_encode($data);
?>