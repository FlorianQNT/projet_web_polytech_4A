<?php
// db.php
$host = 'localhost';
$dbname = 'codex_stygien'; // Nom exact vu sur ton image
$username = 'root';        // Par défaut sur WAMP/XAMPP
$password = '';            // Par défaut vide

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // En production, ne pas afficher l'erreur brute
    die("Erreur de connexion : " . $e->getMessage());
}
?>