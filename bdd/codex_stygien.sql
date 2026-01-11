-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 11 jan. 2026 à 15:15
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `codex_stygien`
--

-- --------------------------------------------------------

--
-- Structure de la table `aphrodite_boon`
--

CREATE TABLE `aphrodite_boon` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Rareté` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Prérequis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `aphrodite_boon`
--

INSERT INTO `aphrodite_boon` (`id`, `Nom`, `Type`, `Rareté`, `Description`, `Image`, `Prérequis`) VALUES
(1, 'Frappe Brise-Coeur', 'Attaque', 'Commun', 'Votre Attaque est plus puissante et applique l\'état Affaibli >Dégâts d\'Attaque 50-125%', 'Aphrodite/frappe_brise_coeur.webp', 'Aucun'),
(2, 'Technique Brise-Coeur', 'Technique', 'Commun', 'Votre Technique est plus puissante et applique l\'état Affaibli >Dégâts de Technique 80-200%', 'Aphrodite/technique_brise_coeur.webp', 'Aucun'),
(3, 'Tir Exalté', 'Lancer', 'Commun', 'Votre Lancer inflige des dégâts dans un rayon étendu a courte portée et applique l\'état Affaibli >Dégâts de Lancer 90-120', 'Aphrodite/Lancer.webp', 'Incompatible avec Aspect de Beowulf'),
(4, 'Déflagration Exaltée', 'Lancer', 'Commun', 'Votre Lancer inflige des dégâts aux ennemis autour de vous, tout en appliquant l\'état Affaibli >Dégâts de Lancer 80-128', 'Aphrodite/Lancer.webp', 'Aspect de Beowulf'),
(5, 'Elan Fougueux', 'Elan', 'Commun', 'Votre Elan vous permet d\'infliger des dégâts autour de votre destination, tout en appliquant l\'état Affaibli >Dégâts d\'Elan 20-32', 'Aphrodite/elan_fougueux.webp', 'Aucun'),
(6, 'Soutien d\'Aphrodite', 'Appel', 'Commun', 'Votre Appel tire un projectile chercheur capable de Charmer un ennemi >Durée du Charme 5-6,5s >Bonus Jauge Pleine-Degats 2500', 'Aphrodite/soutien_aphrodite.webp', 'Aucun'),
(7, 'Dernier Soupir', 'Autre', 'Commun', 'Une fois tués, vos ennemis infligent des dégâts aux autres ennemis a proximité, tout en leur appliquant l\'état Affaibli >Dégâts de Soupir 40-100', 'Aphrodite/dernier_soupir.webp', 'Aucun'),
(8, 'Vague de Désespoir', 'Autre', 'Commun', 'Lorsque vous subissez des dégâts, vous en infligez aux ennemis a proximité tout appliquant l\'état Affaibli >Dégâts de Vengeance 50-125', 'Aphrodite/vague_desespoir.webp', 'Aucun'),
(9, 'Haut les Coeurs', 'Autre', 'Commun', 'Tous les Coeurs de Centaure que vous ramassez sont plus puissants >Efficacité des Coeurs de Centaure 30-48%', 'Aphrodite/haut_les_coeurs.webp', 'Aucun'),
(10, 'Coeur de Pierre', 'Autre', 'Commun', 'Les ennemis vous infligent moins de dégâts lorsqu\'ils se trouvent près de vous >Resistance aux Dégâts des Ennemis Proches 10-18%', 'Aphrodite/coeur_de_pierre.webp', 'Aucun'),
(11, 'Vide Intérieur', 'Autre', 'Commun', 'Vos effets d\'Affaiblissement durent plus longtemps >Durée d\'Affaiblissement 5-12,5s', 'Aphrodite/vide_interieur.webp', 'Frappe Brise-Coeur, Technique Brise-Coeur, Tir Exalté, Déflagration Exaltée, Elan Fougueux'),
(12, 'Fléchissement', 'Autre', 'Commun', 'Vos effets d\'Affaiblissement sont plus puissant >Efficacité de l\'Etat Affaibli 10-17,5%', 'Aphrodite/flechissement.webp', 'Elan Fougueux, Tir Exalté, Frappe Brise-Coeur, Technique Brise-Coeur, Déflagration Exaltée'),
(13, 'Baiser Soufflé', 'Autre', 'Commun', 'Votre Lancer a une portée augmentée et inflige plus de dégâts aux ennemis indemnes >Dégâts vs Ennemis Indemnes 50-125%', 'Aphrodite/baiser_souffle.webp', 'Tir Exalte'),
(14, 'Douce Reddition', 'Autre', 'Commun', 'Les ennemis Affaiblis subissent plus de dégâts >Dégâts vs Ennemis Affaiblis 10-27%', 'Aphrodite/douce_reddition.webp', 'Frappe Brise-Coeur, Technique Brise-Coeur, Tir Exalté, Déflagration Exaltée, Elan Fougueux'),
(15, 'Obsession Malsaine', 'Autre', 'Légendaire', 'Vos effets d\'Affaiblissement ont également 15% de chances de Charmer vos ennemis >Durée du Charme 4s', 'Aphrodite/obsession_malsaine.webp', 'Frappe Brise-Coeur, Technique Brise-Coeur, Tir Exalté, Déflagration Exaltée, Elan Fougueux;Vide Intérieur, Douce Reddition, Fléchissement');

-- --------------------------------------------------------

--
-- Structure de la table `ares_boon`
--

CREATE TABLE `ares_boon` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Rareté` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Prérequis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ares_boon`
--

INSERT INTO `ares_boon` (`id`, `Nom`, `Type`, `Rareté`, `Description`, `Image`, `Prérequis`) VALUES
(1, 'Sort d\'Agonie', 'Attaque', 'Commun', 'Votre Attaque applique l\'état Maudit >Dégâts de Malédiction 50-125', 'Ares/sort_agonie.webp', 'Aucun'),
(2, 'Sort de Douleur', 'Technique', 'Commun', 'Votre Technique applique l\'état Maudit >Dégâts de Malédiction 60-120', 'Ares/sort_douleur.webp', 'Aucun'),
(3, 'Tir Tranchant', 'Lancer', 'Commun', 'Votre Lancer crée une Faille Tranchante >Dégâts de Faille 20-26', 'Ares/Lancer.webp', 'Incompatible avec Aspect de Beowulf'),
(4, 'Déflagration Tranchante', 'Lancer', 'Commun', 'Votre Lancer projette une Faille Tranchante droit devant pendant un bref instant >Dégâts de Faille 30-46', 'Ares/Lancer.webp', 'Aspect de Beowulf'),
(5, 'Elan Tranchant', 'Elan', 'Commun', 'Votre Elan crée une Faille Tranchante a votre point de départ >Dégâts de Faille 10-16', 'Ares/elan_tranchant.webp', 'Aucun'),
(6, 'Soutien d\'Arès', 'Appel', 'Commun', 'Votre Appel vous transforme en une Faille Tranchante Invulnérable pendant 1.2s >Dégâts de Faille (par Coup) 30-53 >Bonus Jauge Max-Durée 5s', 'Ares/soutien_ares.webp', 'Aucun'),
(7, 'Sort de Vengeance', 'Autre', 'Commun', 'Lorsque vous subissez des dégâts, vous appliquez l\'état Maudit aux ennemis a proximité >Dégâts de Malédiction 100-160', 'Ares/sort_vengeance.webp', 'Aucun'),
(8, 'Pulsion Meurtrière', 'Autre', 'Commun', 'Vos Attaques, Techniques et Lancers infligent plus de dégâts > Bonus de Dégâts 10-19%', 'Ares/pulsion_meurtriere.webp', 'Aucun'),
(9, 'Rage Sanguinaire', 'Autre', 'Commun', 'Lorsque vous utilisez votre Refus de la Mort, vous infligez plus de dégâts jusqu\'à la fin du Combat en cours >Bonus de Dégâts pour Combat en Cours 15-38%', 'Ares/rage_sanguinaire.webp', 'Aucun'),
(10, 'Rage de Combat', 'Autre', 'Commun', 'Lorsque vous tuez un ennemis, votre prochaine Attaque ou Technique inflige plus de dégâts >Bonus de Dégâts 100-250%', 'Ares/rage_combat.webp', 'Aucun'),
(11, 'Métal Noir', 'Autre', 'Commun', 'Vos failles Tranchantes occupent une plus grande surface >Zone d\'Effet 20-26%', 'Ares/metal_noir.webp', 'Tir Tranchant, Elan Tranchant, Soutien d\'Arès, Déflagration Tranchante'),
(12, 'Vortex Insatiable', 'Autre', 'Commun', 'Vos Failles Tranchantes persistent plus longtemps et aspirent vos ennemis >Durée de Vie des Failles 0.2-0.5s', 'Ares/vortex_insatiable.webp', 'Tir Tranchant, Elan Tranchant, Soutien d\'Arès, Déflagration Tranchante'),
(13, 'Mauvais Sort', 'Autre', 'Commun', 'Vos effets de Malédiction infligent plus de dégâts lorsqu\'ils sont appliques plusieurs fois >Bonus de Dégâts par Application 10-16', 'Ares/mauvais_sort.webp', 'Sort d\'Agonie, Sort de Douleur'),
(14, 'Désastre Imminent', 'Autre', 'Commun', 'Vos effets de Malédiction infligent plus de dégâts, mais se déclenchent +0.5s plus tard >Dégâts de Malédiction 60-75%', 'Ares/desastre_imminent.webp', 'Sort d\'Agonie, Sort de Douleur, Sort de Vengeance'),
(15, 'Cercle Vicieux', 'Autre', 'Légendaire', 'Vos Failles tranchantes infligent de plus en plus de dégâts a chaque attaque consécutive >Dégâts par Coup Consécutif 2', 'Ares/cercle_vicieux.webp', 'Métal Noir, Vortex Insatiable');

-- --------------------------------------------------------

--
-- Structure de la table `arme`
--

CREATE TABLE `arme` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `arme`
--

INSERT INTO `arme` (`id`, `Nom`, `Type`, `Description`, `Image`) VALUES
(1, 'Aspect de Zagreus', 'Epée', 'La forme sous laquelle la Lame des Enfers s\'est manifestée pour la première fois >Bonus de Vitesse d\'Attaque et de Déplacement 3-15%', 'Armes/Zagreus_Aspect_Sword.webp'),
(2, 'Aspect de Némésis', 'Epée', 'Pendant 3s après votre Technique, votre Attaque peut infliger des dégâts Critiques >Chances de Coup Critique 15-30%', 'Armes/Nemesis_Aspect.webp'),
(3, 'Aspect de Poséidon', 'Epée', 'Votre Technique déloge vos Munitions de Lancer des ennemis >Dégâts de Lancer 10-50%', 'Armes/Poseidon_Aspect.webp'),
(4, 'Aspect d\'Arthur', 'Epée', 'Vous possédez la Sainte Lame d\'Excalibur, et obtenez +50 Points de Vie >Résistance aux Dégâts dans l\'Aura 20-40%', 'Armes/Arthur_Aspect.webp'),
(5, 'Aspect de Zagreus', 'Lance', 'La forme sous laquelle la Lance Eternelle s\'est manifestée pour la première fois >Dégâts, Portée et Vitesse de Technique 10-25%', 'Armes/Zagreus_Aspect_Spear.webp'),
(6, 'Aspect d\'Achille', 'Lance', 'Lorsque vous utilisez votre Technique, vous pouvez ensuite récupérer votre lance avec Précipitation >Bonus de Dégâts Post-Précipitation 50-150%', 'Armes/Achilles_Aspect.webp'),
(7, 'Aspect d\'Hadès', 'Lance', 'Votre Balayage devient Balayage Punitif >Bonus de Dégâts vs Ennemis Punis 30-150%', 'Armes/Hades_Aspect.webp'),
(8, 'Aspect de Guan Yu', 'Lance', 'Vous possédez la Lance de Givre, mais votre Vie Max est réduite et vos Soins sont moins efficaces >Vie Max et Efficacité des Soins -70-50%', 'Armes/Guan_Yu_Aspect.webp'),
(9, 'Aspect de Zagreus', 'Bouclier', 'La forme sous laquelle le Bouclier du Chaos s\'est manifesté pour la première fois >Dégâts d\'Attaque et d\'Assaut 3-15', 'Armes/Zagreus_Aspect_Shield.webp'),
(10, 'Aspect de Chaos', 'Bouclier', 'Après une Charge du Taureau, votre prochaine Technique lance plusieurs Boucliers >Nombre de Boucliers Lances 1-5', 'Armes/Chaos_Aspect.webp'),
(11, 'Aspect de Zeus', 'Bouclier', 'Votre Technique devient Disque Foudroyant >Dégâts de Base du Disque Foudroyant 8-30', 'Armes/Zeus_Aspect.webp'),
(12, 'Aspect de Beowulf', 'Bouclier', 'Vous possédez le Rempart de Naegling, mais subissez +10% de dégâts >Dégâts et Largeur de Charge du Dragon +20-100%', 'Armes/Beowulf_Aspect.webp'),
(13, 'Aspect de Zagreus', 'Arc', 'La forme sous laquelle l\'Arc Traque-Coeur s\'est manifesté pour la première fois >Chance d\'Attaque Critique 3-15%', 'Armes/Zagreus_Aspect_Bow.webp'),
(14, 'Aspect de Chiron', 'Arc', 'Votre Technique vise automatiquement le dernier ennemi touché par votre Attaque >Nombre de Flèches par Technique 4-8', 'Armes/Chiron_Aspect.webp'),
(15, 'Aspect d\'Héra', 'Arc', 'Votre Lancer incorpore vos Munitions de Lancer a votre prochaine Attaque, qui sont ensuite projetées a l\'impact >Délai de Délogement des Munitions de Lancer 10-5s', 'Armes/Hera_Aspect.webp'),
(16, 'Aspect de Rama', 'Arc', 'Vous possédez Sharanga, l\'Arc Céleste, capable d\'infliger Souffrance Partagée >Dégâts de Souffrance Partagée 30-60%', 'Armes/Rama_aspect.webp'),
(17, 'Aspect de Zagreus', 'Poings', 'La forme sous laquelle les Poings Jumeaux se sont manifestés pour la première fois >Chances d\'Esquive 5-15%', 'Armes/Zagreus_Aspect_Fists.webp'),
(18, 'Aspect de Talos', 'Poings', 'Votre Technique devient Poing Magnétique; la traction inflige 20 points de dégâts >Bonus Attaque et Lancer Magnétisés 10-50%', 'Armes/Talos_Aspect.webp'),
(19, 'Aspect de Demeter', 'Poings', 'Lorsque vous infligez 12 coups avec votre Attaque, votre prochaine Technique frappe plusieurs fois >Nombre de Coups Techniques Consécutifs 1-5', 'Armes/Demeter_Aspect.webp'),
(20, 'Aspect de Gilgamesh', 'Poings', 'Vous possédez les Griffes d\'Endiku, dont l\'Essor Mutile vos ennemis >Dégâts de Mutilation 100-400', 'Armes/Gilgamesh_Aspect.webp'),
(21, 'Aspect de Zagreus', 'Canon', 'La forme sous laquelle le Canon Adamantin s\'est manifesté pour la première fois >Capacite du Magasin +4-12', 'Armes/Zagreus_Rail_Image.webp'),
(22, 'Aspect d\'Eris', 'Canon', 'Lorsque vous absorbez l\'explosion de votre Technique, vous infligez plus de dégâts pendant 4s >Bonus de Dégâts 15-75%', 'Armes/Eris_Aspect.webp'),
(23, 'Aspect d\'Hestia', 'Canon', 'Lorsque vous Rechargez manuellement, votre prochain tir devient plus puissant >Dégâts de Base du prochain Tir 50-150', 'Armes/Hestia_Aspect_Image.webp'),
(24, 'Aspect de Lucifer', 'Canon', 'Vous possédez l\'Igneus Eden, capable de répandre le Feu Infernal >Dégâts d\'Explosion du Feu Infernal 50-100', 'Armes/Lycifer_Aspect.webp');

-- --------------------------------------------------------

--
-- Structure de la table `artemis_boon`
--

CREATE TABLE `artemis_boon` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Rareté` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Prérequis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `artemis_boon`
--

INSERT INTO `artemis_boon` (`id`, `Nom`, `Type`, `Rareté`, `Description`, `Image`, `Prérequis`) VALUES
(1, 'Frappe Mortelle', 'Attaque', 'Commun', 'Votre Attaque est plus puissante et a 15% de chances d\'infliger des dégâts Critiques >Dégâts d\'Attaque 20-50%', 'Artemis/frappe_mortelle.webp', 'Aucun'),
(2, 'Technique Mortelle', 'Technique', 'Commun', 'Votre Technique est plus puissante et a 20% de chances d\'infliger des dégâts Critiques >Dégâts de Technique 40-100%', 'Artemis/technique_mortelle.webp', 'Aucun'),
(3, 'Tir Précis', 'Lancer', 'Commun', 'Votre Lancer traque vos ennemis et a 10% de chances d\'infliger des dégâts Critiques >Dégâts de Lancer 70-100', 'Artemis/Lancer.webp', 'Incompatible avec Aspect de Beowulf'),
(4, 'Déflagration du Chasseur', 'Lancer', 'Commun', 'Votre Lancer inflige des dégâts aux ennemis autour de vous et a 10% de chances d\'infliger des dégâts Critiques >Dégâts de Lancer 55-79', 'Artemis/Lancer.webp', 'Aspect de Beowulf'),
(5, 'Elan du Chasseur', 'Elan', 'Commun', 'Votre Assaut inflige plus de dégâts >Dégâts d\'Assaut 50-80%', 'Artemis/elan_chasseur.webp', 'Aucun'),
(6, 'Soutien d\'Artémis', 'Appel', 'Commun', 'Votre Appel tire une flèche chercheuse. (Chances d\'infliger des dégâts Critiques 35%) >Dégâts de Fleche 100-130 >Bonus Jauge Pleine-Flèches Tirées 10', 'Artemis/soutien_artemis.webp', 'Aucun'),
(7, 'Points de Pression', 'Autre', 'Commun', 'Tous les dégâts que vous infligez ont une chance d\'être Critiques >Probabilité de Coup Critique 2-5%', 'Artemis/points_pression.webp', 'Aucun'),
(8, 'Plaies Ouvertes', 'Autre', 'Commun', 'Vos ennemis subissent des dégâts lorsque vos Munitions de Lancer se délogent d\'eux >Dégâts d\'Extraction 100-160', 'Artemis/plaies_ouvertes.webp', 'Tir Précis, Tir de Submersion, Déflagration Submergeante, Tir Foudroyant, Tir Exalté, Tir de Phalange'),
(9, 'Mort Propre', 'Autre', 'Commun', 'Vos Coups Critiques infligent encore plus de dégâts >Dégâts Critiques 15-37,5%', 'Artemis/mort_propre.webp', 'Frappe Mortelle, Points de Pression, Technique Mortelle, Tir Précis, Soutien d\'Artémis'),
(10, 'Tir de Soutien', 'Autre', 'Commun', 'Vous tirez une flèche chercheuse lorsque vous infligez des dégâts avec votre Lancer, Attaque, ou Technique >Dégâts de Fleche 10-16', 'Artemis/tir_soutien.webp', 'Frappe Mortelle, Points de Pression, Technique Mortelle, Tir Précis, Soutien d\'Artémis, Elan du Chasseur, Déflagration du Chasseur'),
(11, 'Perce-Cuir', 'Autre', 'Commun', 'Vos Coups Critiques infligent encore plus de dégâts a l\'armure de vos ennemis >Dégâts Critiques vs Armure 100-250', 'Artemis/perce_cuir.webp', 'Frappe Mortelle, Points de Pression, Technique Mortelle, Tir Précis, Soutien d\'Artémis'),
(12, 'Instinct du Chasseur', 'Autre', 'Commun', 'Votre Jauge Divine se remplit plus vite lorsque vous infligez des dégâts Critiques >Vitesse de Remplissage sur Coup Critique 0,25-0,4%', 'Artemis/instinct_chasseur.webp', 'Frappe Mortelle, Points de Pression, Technique Mortelle, Tir Précis'),
(13, 'Marque du Chasseur', 'Autre', 'Commun', 'Lorsque vous infligez des dégâts Critiques a un ennemi, un autre ennemi a proximité subit l\'état Ciblé >Chance de Coup Critique vs Ennemis Ciblés 30-81%', 'Artemis/marque_chasseur.webp', 'Frappe Mortelle, Points de Pression, Technique Mortelle, Tir Précis, Soutien d\'Artémis'),
(14, 'Chargé à Bloc', 'Autre', 'Légendaire', 'Vous obtenez des Munitions de Lancer supplémentaires pour votre Lancer >Quantité 2', 'Artemis/charge_a_bloc.webp', 'Deux Parmi:;Points de Pression, Tir de Soutien, Plaies Ouvertes');

-- --------------------------------------------------------

--
-- Structure de la table `athena_boon`
--

CREATE TABLE `athena_boon` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Rareté` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Prérequis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `athena_boon`
--

INSERT INTO `athena_boon` (`id`, `Nom`, `Type`, `Rareté`, `Description`, `Image`, `Prérequis`) VALUES
(1, 'Frappe Divine', 'Attaque', 'Commun', 'Votre Attaque est plus puissante et peut effectuer un Renvoi >Dégâts d\'Attaque 40-100%', 'Athena/frappe_divine.webp', 'Aucun'),
(2, 'Technique Divine', 'Technique', 'Commun', 'Votre Technique est plus puissante et peut effectuer un Renvoi >Dégâts de Techniques 60-150%', 'Athena/technique_divine.webp', 'Aucun'),
(3, 'Tir de Phalange', 'Lancer', 'Commun', 'Votre Lancer inflige des dégâts en zone et Renvoie toute attaque sur sa trajectoire >Dégâts de Lancer 85-136', 'Athena/Lancer.webp', 'Incompatible avec Aspect de Beowulf'),
(4, 'Déflagration de Phalange', 'Lancer', 'Commun', 'Votre Lancer inflige des dégâts aux ennemis autour de vous et peut effectuer un Renvoi >Dégâts de Lancer 80-110', 'Athena/Lancer.webp', 'Aspect de Beowulf'),
(5, 'Elan Divin', 'Elan', 'Commun', 'Votre Elan inflige des dégâts et permet de Renvoyer toute attaque sur votre chemin >Dégâts d\'Elan 10-16', 'Athena/elan_divin.webp', 'Aucun'),
(6, 'Soutien d\'Athéna', 'Appel', 'Commun', 'Votre Appel vous rend brièvement Invulnérable et Renvoie toutes les attaques >Durée de l\'Effet 1,5-1,95s >Bonus Jauge Pleine-Durée x6', 'Athena/soutien_athena.webp', 'Aucun'),
(7, 'Bouclier Sacré', 'Autre', 'Commun', 'Lorsque vous subissez des dégâts, vous en infligez aux ennemis a proximité et bénéficiez d\'un bref Renvoi >Degats de Vengeance 30-75', 'Athena/bouclier_sacre.webp', 'Aucun'),
(8, 'Peau de Bronze', 'Autre', 'Commun', 'Vos ennemis vous infligent moins de dégâts >Resistance aux Dégâts Ennemis 5-12,5%', 'Athena/peau_bronze.webp', 'Aucun'),
(9, 'Rempart Indestructible', 'Autre', 'Commun', 'Vous restez Invulnérable plus longtemps après un Refus de la Mort. Restaurez-en 1 utilisation >Durée d\'Invulnérabilité 2-3,5s', 'Athena/rempart_indestructible.webp', 'Frappe Divine, Tir de Phalange, Elan Divin, Technique Divine'),
(10, 'Dernier Rempart', 'Autre', 'Commun', 'Votre Refus de la Mort restaure plus de vie que d\'habitude. Restaurez-en 1 utilisation >Soin de Refus 10-16%', 'Athena/dernier_rempart.webp', 'Frappe Divine, Tir de Phalange, Elan Divin, Technique Divine'),
(11, 'Fière Allure', 'Autre', 'Commun', 'Vous commencez chaque Combat avec votre Jauge Divine partiellement remplie >Niveau de Remplissage Initial 20-40%', 'Athena/fiere_allure.webp', 'Aucun'),
(12, 'Démarche Assurée', 'Autre', 'Commun', 'Les Pièges vous infligent moins de dégâts >Resistance aux Dégâts des Pièges 60-95%', 'Athena/demarche_assuree.webp', 'Aucun'),
(13, 'Eclair Aveuglant', 'Autre', 'Commun', 'Vos attaques pouvant effectuer un Renvoi appliquent également l\'état Expose >Dégâts de Coup Sournois 50-87,5%', 'Athena/eclair_aveuglant.webp', 'Frappe Divine, Tir de Phalange, Elan Divin, Technique Divine, Déflagration Divine'),
(14, 'Riposte Eclatante', 'Autre', 'Commun', 'Les attaques que vous Renvoyez infligent plus de dégâts >Dégâts de Renvoi 80-200%', 'Athena/riposte_eclatante.webp', 'Frappe Divine, Bouclier Sacré, Elan Divin, Technique Divine'),
(15, 'Protection Divine', 'Autre', 'Légendaire', 'Vous formez une barrière autour de vos qui bloque la prochaine salve de dégâts >Temps de Régénération de la Barriere 20s', 'Athena/protection_divine.webp', 'Riposte Eclatante');

-- --------------------------------------------------------

--
-- Structure de la table `demeter_boon`
--

CREATE TABLE `demeter_boon` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Rareté` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Prérequis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `demeter_boon`
--

INSERT INTO `demeter_boon` (`id`, `Nom`, `Type`, `Rareté`, `Description`, `Image`, `Prérequis`) VALUES
(1, 'Frappe Givrée', 'Attaque', 'Commun', 'Votre Attaque est plus puissante et applique l\'état Gelé >Dégâts d\'Attaque 40-100%', 'Demeter/frappe_givree.webp', 'Aucun'),
(2, 'Technique Givrée', 'Technique', 'Commun', 'Votre Technique est plus puissante et applique l\'état Gelé >Dégâts de Technique 60-150%', 'Demeter/technique_givree.webp', 'Aucun'),
(3, 'Rayon Cristallin', 'Lancer', 'Commun', 'Votre Lancer forme un cristal émettant un rayon qui suit vos ennemis pendant 5s >Dégâts de Lancer 8-11.6(toutes les 0.2s)', 'Demeter/Lancer.webp', 'Incompatible avec Aspect de Beowulf'),
(4, 'Déflagration Glaciale', 'Lancer', 'Commun', 'Votre Lancer inflige des dégâts aux ennemis autour de vous, tout en appliquant l\'état Gelé >Dégâts de Lancer 70-100', 'Demeter/Lancer.webp', 'Aspect de Beowulf'),
(5, 'Elan du Mistral', 'Elan', 'Commun', 'Votre Elan émet une rafale d\'air froid capable d\'appliquer l\'état Gelé >Dégâts de Rafale 15-37.5', 'Demeter/elan_mistral.webp', 'Aucun'),
(6, 'Soutien de Demeter', 'Appel', 'Commun', 'Votre Appel Cree un vortex glacial pendant 5s qui applique l\'état Gelé >Dégâts de Blizzard 10-13 (toutes les 0.2s) >Bonus Jauge Pleine-Durée 10s', 'Demeter/soutien_demeter.webp', 'Aucun'),
(7, 'Rafale de Neige', 'Autre', 'Commun', 'Lorsque vous utilisez votre Lancer, vous infligez des dégâts aux ennemis autour de vous tout en appliquant l\'état Gelé >Dégâts de Zone 40-70', 'Demeter/rafale_neige.webp', 'Aucun'),
(8, 'Toucher Glacial', 'Autre', 'Commun', 'Lorsqu\'un ennemis vous inflige des dégâts, celui-ci en subit également et devient complètement Gelé >Dégâts de Vengeance 10-25', 'Demeter/toucher_glacial.webp', 'Aucun'),
(9, 'Récolte fructueuse', 'Autre', 'Commun', 'Certains de vos Bienfaits deviennent Communs, puis leur Qualité augmente tous les 3 Combats >Nombre de Bienfait Affectes 1-3', 'Demeter/recolte_fructueuse.webp', 'Aucun'),
(10, 'Nourriture Spirituelle', 'Autre', 'Commun', 'Toutes les sources de Soins sont plus efficaces. Restaurez immédiatement 30% >Efficacité des Soins 30-37.5%', 'Demeter/nourriture_spirituelle.webp', 'Aucun'),
(11, 'Volonté Vorace', 'Autre', 'Commun', 'Lorsque vous êtes a court de Munition de Lancer, vous subissez 10% de dégâts en moins et en infligez plus >Bonus de Dégâts 10-40%', 'Demeter/volonte_vorace.webp', 'Aucun'),
(12, 'Regard Glacial', 'Autre', 'Commun', 'Votre Lancer persiste plus longtemps et applique l\'état Gelé >Durée de Lancer 2-3.2s', 'Demeter/regard_glacial.webp', 'Incompatible avec Aspect de Beowulf;Rayon Cristallin'),
(13, 'Souffle Arctique', 'Autre', 'Commun', 'Appliquez 10 fois l\'état Gelé sur le même ennemi déclenche une explosion, supprimant l\'état au passage >Dégâts d\'Explosion 80-110', 'Demeter/souffle_arctique.webp', 'Frappe Givrée, Technique Givrée, Elan du Mistral, Soutien de Demeter, Déflagration Glaciale, Rafale de Neige'),
(14, 'Gel Mortel', 'Autre', 'Commun', 'Lorsque tous vos ennemis sont Gelés, ils deviennent 10-25% plus lents et se désintègrent >Dégâts de Désintégration 20-50(toutes les 0.5s)', 'Demeter/gel_mortel.webp', 'Frappe Givrée, Technique Givrée, Elan du Mistral, Soutien de Demeter, Déflagration Glaciale, Rafale de Neige'),
(15, 'Moisson Hivernale', 'Autre', 'Légendaire', 'Les ennemis Gelés volent en éclats à 10% de Vie, Gelant également les ennemis a proximité >Dégâts d\'Eclat 50', 'Demeter/moisson_hivernale.webp', 'Deux Parmi:;Gel Mortel, Volonté Vorace, Souffle Arctique');

-- --------------------------------------------------------

--
-- Structure de la table `dionysos_boon`
--

CREATE TABLE `dionysos_boon` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Rareté` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Prérequis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dionysos_boon`
--

INSERT INTO `dionysos_boon` (`id`, `Nom`, `Type`, `Rareté`, `Description`, `Image`, `Prérequis`) VALUES
(1, 'Frappe Eméchée', 'Attaque', 'Commun', 'Votre Attaque applique l\'état Intoxique >Dégâts d\'Intoxication 4-7', 'Dionysos/frappe_emechee.webp', 'Aucun'),
(2, 'Technique Eméchée', 'Technique', 'Commun', 'Votre Technique applique l\'état Intoxique >Dégâts d\'Intoxication 5-8', 'Dionysos/technique_emechee.webp', 'Aucun'),
(3, 'Tir Eméché', 'Lancer', 'Commun', 'Votre Lancer inflige plus des dégâts aux ennemis autour de vous et laisse derrière lui un Brouillard Festif >Dégâts de Lancer 100-160', 'Dionysos/Lancer.webp', 'Incompatible avec Aspect de Beowulf'),
(4, 'Déflagration Eméchée', 'Lancer', 'Commun', 'Votre Lancer inflige plus des dégâts aux ennemis autour de vous et laisse derrière lui un Brouillard Festif >Dégâts de Lancer 100-160', 'Dionysos/Lancer.webp', 'Aspect de Beowulf, Aspect d\'Héra'),
(5, 'Elan Eméché', 'Elan', 'Commun', 'Votre Elan vous permet d\'appliquer plusieurs fois l\'état Intoxique a proximité de votre point de départ >Dégâts d\'Intoxication 2-5', 'Dionysos/elan_emeche.webp', 'Aucun'),
(6, 'Soutien de Dionysos', 'Appel', 'Commun', 'Votre Appel inflige l\'état Intoxique aux ennemis autour de vous pendant 1.5s >Dégâts d\'Intoxication 15-19.5 >Bonus Jauge Pleine-Durée 9s', 'Dionysos/soutien_dionysos.webp', 'Aucun'),
(7, 'Cuvée de Prestige', 'Autre', 'Commun', 'Votre Vie Max augmente lorsque vous ramassez du Nectar. Recevez immédiatement 1 Nectar >Gain de Vie 20-35', 'Dionysos/cuvee_prestige.webp', 'Aucun'),
(8, 'After Party', 'Autre', 'Commun', 'Si votre Vie est trop basse après un Combat, alors elle est restaurée alors jusqu\'à la valeur seuil >Seuil de Vie 30-60%', 'Dionysos/after_party.webp', 'Aucun'),
(9, 'Eau-De-Vie', 'Autre', 'Commun', 'Boire dans une Fontaine restaure toute votre Vie et augmente vos dégâts >Bonus de Dégâts par Fontaine 3-6%', 'Dionysos/eau_de_vie.webp', 'Aucun'),
(10, 'Attitude Positive', 'Autre', 'Commun', 'Vous subissez moins de dégâts lorsque vous avez 40% de votre Vie ou moins >Resistance aux Dégâts 10-25%', 'Dionysos/attitude_positive.webp', 'Aucun'),
(11, 'Haute Tolérance', 'Autre', 'Commun', 'Vous subissez moins de dégâts lorsque vous vous tenez dans votre Brouillard Festif >Résistance aux Dégâts 10-40.5%', 'Dionysos/haute_tolerance.webp', 'Tir Eméché, Déflagration Eméchée'),
(12, 'Mauvaise Influence', 'Autre', 'Commun', 'Vous infligez plus de dégâts lorsque 3 ennemis ou plus sont Intoxiqués >Bonus de Dégâts 50-125%', 'Dionysos/mauvaise_influence.webp', 'Elan Eméché, Frappe Eméchée, Technique Eméchée, Soutien de Dionysos'),
(13, 'Engourdissement', 'Autre', 'Commun', 'Vos effets d\'Intoxication ralentissent également vos ennemis >Reduction de Vitesse de Déplacement 15-37.5%', 'Dionysos/engourdissement.webp', 'Elan Eméché, Frappe Eméchée, Technique Eméchée, Soutien de Dionysos'),
(14, 'Pression de Groupe', 'Autre', 'Commun', 'Les ennemis Intoxiqués en contaminent d\'autres à proximité toutes les 4s >Dégâts d\'Intoxication 4-10.8', 'Dionysos/pression_groupe.webp', 'Elan Eméché, Frappe Emechée, Technique Eméchée'),
(15, 'Evanouissement', 'Autre', 'Légendaire', 'Vos ennemis Intoxiqués subissent plus de dégâts lorsqu\'ils se trouvent dans le Brouillard Festif >Bonus de Dégâts 60%', 'Dionysos/evanouissement.webp', 'Elan Eméché, Frappe Eméchée, Technique Eméchée, Soutien de Dionysos;Tir Eméché, Déflagration Eméchée');

-- --------------------------------------------------------

--
-- Structure de la table `duo`
--

CREATE TABLE `duo` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `PrérequisA` text DEFAULT NULL,
  `PrérequisB` text DEFAULT NULL,
  `PrérequisX` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `duo`
--

INSERT INTO `duo` (`id`, `Nom`, `Description`, `Image`, `PrérequisA`, `PrérequisB`, `PrérequisX`) VALUES
(1, 'Paratonnerre', 'Les ennemis a proximité de vos Munitions de Lancers au sol sont frappes par la foudre toutes 1s >Dégâts de Foudre 70', 'Duo/paratonnerre.webp', 'Frappe Mortelle, Technique Mortelle, Tir Précis, Déflagration du Chasseur, Elan du Chasseur, Soutien d\'Artémis', 'Frappe Foudroyante, Elan Foudroyant, Technique Fourdroyante, Tir Foudroyant, Déflagration Foudroyante, Soutien de Zeus', 'Ame Infernale'),
(2, 'Humeur Vengeresse', 'Vos effets de Vengeance peuvent se déclencher spontanément >Délai de Vengeance Automatique 3s', 'Duo/humeur_vengeresse.webp', 'Sort d\'Agonie, Sort de Douleur, Tir Tranchant, Elan Tranchant, Soutien d\'Arès, Déflagration Tranchante', 'Frappe Foudroyante, Elan Foudroyant, Technique Fourdroyante, Tir Foudroyant, Déflagration Foudroyante, Soutien de Zeus', 'Sort de Vengeance, Vengeance Céleste, Bouclier Sacré, Vague de Désespoir, Toucher Glacial'),
(3, 'Tempête Tropicale', 'Lorsque vous repoussez un ennemi, celui-ci est ensuite frappe par la foudre >Dégâts de Foudre 40', 'Duo/tempete_tropicale.webp', 'Frappe Marine, Technique Marine, Tir de Submersion, Déflagration Submergeante, Soutien de Poséidon', 'Frappe Foudroyante, Elan Foudroyant, Technique Fourdroyante, Tir Foudroyant, Déflagration Foudroyante, Soutien de Zeus', 'Aucun'),
(4, 'Fusion Froide', 'Vos Effets de Choc n\'expirent pas immédiatement lorsqu\'un ennemi affecté attaque >Durée de Choc 10s', 'Duo/fusion_froide.webp', 'Frappe Givrée, Technique Givrée, Elan du Mistral, Soutien de Demeter', 'Electricité Statique', 'Aucun'),
(5, 'Festin Scintillant', 'Les ennemis pris dans le Brouillard Festif sont régulièrement frappés par la foudre >Dégâts de Foudre 60', 'Duo/festin_scintillant.webp', 'Tir Eméché', 'Frappe Foudroyante, Elan Foudroyant, Technique Fourdroyante, Soutien de Zeus', 'Aucun'),
(6, 'Phalange Foudroyante', 'Votre Tir de Phalange rebondit d\'un ennemi a l\'autre >Nombre de Rebonds Max 3', 'Duo/phalange_foudroyante.webp', 'Tir de Phalange', 'Frappe Foudroyante, Elan Foudroyant, Technique Fourdroyante, Soutien de Zeus', 'Aucun'),
(7, 'Atmosphère Sulfureuse', 'Votre Jauge Divine se remplit automatiquement, mais est limité à 25% de sa capacité maximale >Vitesse de Remplissage 1%(toutes les 0,2s)', 'Duo/atmosphere_sulfureuse.webp', 'Frappe Brise-Coeur, Technique Brise-Coeur, Tir Exalté, Elan Fougueux, Soutien d\'Aphrodite, Déflagration Exaltée', 'Frappe Foudroyante, Elan Foudroyant, Technique Fourdroyante, Tir Foudroyant, Déflagration Foudroyante, Soutien de Zeus', 'Aucun'),
(8, 'Tir de Mirage', 'Votre Lancer tire un deuxième projectile moins puissant >Dégâts du Deuxième Projectile 30%', 'Duo/tir_mirage.webp', 'Frappe Mortelle, Technique Mortelle, Tir Précis, Déflagration du Chasseur, Soutien d\'Artémis', 'Frappe Marine, Technique Marine, Elan Marin, Tir de Submersion, Déflagration Submergeante, Soutien de Poséidon', 'Aucun'),
(9, 'Tir du Blizzard', 'Votre Lancer se déplace lentement, transperçant les ennemis sur sa trajectoire et projetant des éclats alentour >Dégâts d\'Eclats 20', 'Duo/tir_blizzard.webp', 'Frappe Givrée, Technique Givrée, Elan du Mistral, Soutien de Demeter', 'Tir de Submersion', 'Aucun'),
(10, 'Nectar Sucré', 'Les Grenades de Puissance que vous trouvez sont plus efficaces >Niv. Supplémentaires Accordés +1', 'Duo/nectar_sucre.webp', 'Frappe Brise-Coeur, Technique Brise-Coeur, Tir Exalté, Elan Fougueux, Soutien d\'Aphrodite, Déflagration Exaltée', 'Frappe Marine, Technique Marine, Elan Marin, Tir de Submersion, Déflagration Submergeante, Soutien de Poséidon', 'Aucun'),
(11, 'Sort de Naufrage', 'Votre Tir de Submersion devient une onde qui inflige des dégâts aux ennemis autour de vous >Nombre d\'Ondes par Lancer 3', 'Duo/sort_naufrage.webp', 'Sort d\'Agonie, Sort de Douleur, Elan Tranchant, Soutien d\'Arès', 'Tir de Submersion, Déflagration Submergeante', 'Aucun'),
(12, 'Accès Exclusif', 'Tous les Bienfaits que vous trouvez sont de qualité supérieure >Qualité Minimum Epique', 'Duo/acces_exclusif.webp', 'Frappe Eméchée, Technique Eméchée, Tir Eméché, Déflagration Eméchée, Elan Eméché, Soutien de Dionysos', 'Frappe Marine, Technique Marine, Elan Marin, Tir de Submersion, Déflagration Submergeante, Soutien de Poséidon', 'Aucun'),
(13, 'Volonté Inébranlable', 'Vous ne pouvez plus être étourdi, et subissez moins de dégâts de la part des Boss >Resistance aux Dégâts des Boss 10%', 'Duo/volonte_inebranlable.webp', 'Frappe Divine, Technique Divine, Tir de Phalange, Déflagration de Phalange, Soutien d\'Athéna', 'Frappe Marine, Technique Marine, Tir de Submersion, Déflagration Submergeante, Soutien de Poséidon', 'Aucun'),
(14, 'Revers Mortel', 'Lorsque vous effectuez un Renvoi, vous gagnez brièvement +20% de chances d\'infliger des dégâts Critiques >Durée de l\'Effet 2s', 'Duo/revers_mortel.webp', 'Frappe Mortelle, Technique Mortelle, Tir Précis, Déflagration du Chasseur, Soutien d\'Artémis', 'Frappe Divine, Technique Divine', 'Aucun'),
(15, 'Baiser d\'Adieu', 'Tous vos bonus de dégâts de dos s\'appliquent désormais également a votre Lancer >Bonus de Dégâts de Dos 35%', 'Duo/baiser_adieu.webp', 'Frappe Brise-Coeur, Technique Brise-Coeur, Tir Exalté, Elan Fougueux, Soutien d\'Aphrodite', 'Frappe Divine, Technique Divine, Tir de Phalange, Elan Divin, Soutien d\'Athéna', 'Aucun'),
(16, 'Racines Persistantes', 'Lorsque vous êtes à court d\'utilisations de votre Refus de la Mort, vous régénérez votre Vie au fil du temps >Points de Vie Régénérés 1 Point de Vie(toutes les 0,8s)', 'Duo/racines_persistantes.webp', 'Frappe Divine, Technique Divine, Tir de Phalange, Elan Divin, Soutien d\'Athéna, Déflagration de Phalange', 'Frappe Givrée, Technique Givrée, Elan du Mistral, Rayon Cristallin, Déflagration Glaciale, Soutien de Demeter', 'Aucun'),
(17, 'Risque Calculé', 'Les projectiles ennemis voyagent plus lentement >Reduction de Vitesse des Projectiles Ennemis 50%', 'Duo/risque_calcule.webp', 'Frappe Divine, Technique Divine, Elan Divin, Soutien d\'Athéna', 'Frappe Eméchée, Technique Eméchée, Elan Eméché, Soutien de Dionysos', 'Aucun'),
(18, 'Miséricorde', 'Vos attaques pouvant effectuer un Renvoi déclenchent vos effets de Malédiction >Dégâts de Malédiction via Renvoi 40', 'Duo/misericorde.webp', 'Frappe Divine, Technique Divine', 'Sort d\'Agonie, Sort de Douleur', 'Aucun'),
(19, 'Désir Funeste', 'Vos effets de Malédiction frappent en continu les ennemis Affaiblis >Reduction de Dégâts par Coup Consécutif 50%', 'Duo/desir_funeste.webp', 'Frappe Brise-Coeur, Technique Brise-Coeur, Tir Exalte, Elan Fougueux, Déflagration Exaltée', 'Sort d\'Agonie, Sort de Douleur', 'Aucun'),
(20, 'Faible Tolérance', 'Vos effets d\'Intoxication peuvent s\'accumuler plus de fois chez les ennemis Affaiblis >Cumuls Max vs Ennemis Affaiblis +3', 'Duo/faible_tolerance.webp', 'Frappe Brise-Coeur, Technique Brise-Coeur, Tir Exalté, Elan Fougueux, Déflagration Exaltée', 'Frappe Eméchée, Technique Eméchée, Elan Eméché, Soutien de Dionysos', 'Aucun'),
(21, 'Crève-Coeur', 'Vos Coups Critiques infligent encore plus de dégâts aux ennemis Affaiblis >Dégâts Critiques vs Ennemis Affaiblis 150%', 'Duo/creve_coeur.webp', 'Frappe Brise-Coeur, Technique Brise-Coeur, Tir Exalté, Elan Fougueux, Déflagration Exaltée', 'Frappe Mortelle, Technique Mortelle, Tir Précis, Déflagration du Chasseur', 'Aucun'),
(22, 'Etreinte Glaciale', 'Votre Lancer émet son rayon directement vers vous et persiste 4s plus longtemps >Bonus de Dégâts de Lancer 30%', 'Duo/etreinte_glaciale.webp', 'Frappe Brise-Coeur, Technique Brise-Coeur, Elan Fougueux, Soutien d\'Aphrodite', 'Rayon Cristallin', 'Aucun'),
(23, 'Lames de Chasse', 'Votre Lancer crée une Faille Tranchante plus rapide qui pourchasse l\'ennemi le plus proche >Durée de Chasse 3,3s', 'Duo/lames_de_chasse.webp', 'Tir Tranchant', 'Frappe Mortelle, Technique Mortelle, Elan du Chasser, Soutien d\'Artémis', 'Aucun'),
(24, 'Clarté Cristalline', 'Votre Lancer est plus puissant et suit vos ennemis avec plus de précision >Dégâts de Rayon 10%', 'Duo/clarte_cristalline.webp', 'Frappe Mortelle, Technique Mortelle, Elan du Chasser, Soutien d\'Artémis', 'Rayon Cristallin', 'Aucun'),
(25, 'Migraine Cinglante', 'Les ennemis Intoxiqués ont plus de chances de subir de dégâts Critiques >Chance de Coup Critique par Cumul 1,5%', 'Duo/migraine_cinglante.webp', 'Frappe Mortelle, Technique Mortelle, Tir Précis, Soutien d\'Artémis', 'Frappe Eméchée, Technique Eméchée, Elan Eméché, Soutien de Dionysos', 'Aucun'),
(26, 'Sort de Nausée', 'Vos effets d\'Intoxication infligent des dégâts a un rythme plus élevé >Fréquence des Dégâts d\'Intoxication 0,5s=>0,35s', 'Duo/sort_de_nausee.webp', 'Sort d\'Agonie, Sort de Douleur, Sort de Vengeance', 'Frappe Eméchée, Technique Eméchée, Elan Eméché, Soutien de Dionysos', 'Aucun'),
(27, 'Vortex Frigorifiant', 'Votre Lancer applique l\'état Gelé, mais est plus petit et se déplace plus lentement >Taille de Faille Tranchante -15%', 'Duo/vortex_frigorifiant.webp', 'Tir Tranchant, Déflagration Tranchante', 'Frappe Givrée, Technique Givrée, Elan du Mistral, Soutien de Demeter', 'Aucun'),
(28, 'Vin de Glace', 'Votre Lancer explose en un Brouillard Festif qui applique l\'état Gelé >Dégâts d\'Explosion 30%', 'Duo/vin_de_glace.webp', 'Frappe Givrée, Technique Givrée, Elan du Mistral, Soutien de Demeter', 'Tir Eméché, Déflagration Eméchée', 'Aucun');

-- --------------------------------------------------------

--
-- Structure de la table `hermes_boon`
--

CREATE TABLE `hermes_boon` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Rareté` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Prérequis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `hermes_boon`
--

INSERT INTO `hermes_boon` (`id`, `Nom`, `Type`, `Rareté`, `Description`, `Image`, `Prérequis`) VALUES
(1, 'Recharge Rapide', 'Autre', 'Commun', 'Vos Munitions de Lancer se délogent de vos ennemis plus rapidement >Délai de Délogement 5-2s', 'Hermes/recharge.webp', 'Ame Infernale;Incompatible avec Aspect de Beowulf, Rayon Cristallin, Sort de Naufrage, Tir Tranchant, Tir Eméché'),
(2, 'Recharge Automatique', 'Autre', 'Commun', 'Vos Munitions de Lancer se régénèrent plus rapidement >Délai de Régénération 4.59-2s', 'Hermes/recharge.webp', 'Ame Stygienne'),
(3, 'Reflexe Suprême', 'Elan', 'Commun', 'Vous pouvez vous Elancer plus de fois d\'affilée >Elans Supplémentaires 1-4', 'Hermes/reflexe_supreme.webp', 'Aucun'),
(4, 'Prime d\'Activité', 'Autre', 'Commun', 'Vous obtenez un peu d\'argent a chaque fois que vous entrez dans une chambre >Bonus d\'Argent par Chambre 10-19', 'Hermes/prime_d_activite.webp', 'Aucun'),
(5, 'Esquive Maximale', 'Autre', 'Commun', 'Vous avez une chance d\'Esquiver automatiquement les attaques de vos ennemis >Chance d\'Esquive 10-25%', 'Hermes/esquive_maximale.webp', 'Aucun'),
(6, 'Technique Fulgurante', 'Technique', 'Commun', 'Votre Technique est plus rapide >Vitesse de Technique 10-40%', 'Hermes/technique_fulgurante.webp', 'Aucun'),
(7, 'Second Souffle', 'Appel', 'Commun', 'Votre Appel augmente également votre vitesse de déplacement ainsi que vos chances d\'Esquive pendant 10s >Vitesse de Déplacement et Chance d\'Esquive 30-39%', 'Hermes/second_souffle.webp', 'Soutien de Zeus, Soutien d\'Athéna, Soutien d\'Artémis, Soutien de Poséidon, Soutien d\'Aphrodite, Soutien d\'Arès, Soutien de Dionysos, Soutien de Demeter, Soutien d\'Hadès'),
(8, 'Frappe Fulgurante', 'Attaque', 'Commun', 'Votre Attaque est plus rapide >Vitesse d\'Attaque 10-40%', 'Hermes/frappe_fulgurante.webp', 'Aucun'),
(9, 'Précipitation', 'Autre', 'Commun', 'Vous vous déplacez plus rapidement >Vitesse de Déplacement 20-50%', 'Hermes/precipitation.webp', 'Aucun'),
(10, 'Tir Fulgurant', 'Lancer', 'Commun', 'Maintenez enfonce votre bouton de Lancer pour tirer plusieurs fois de suite rapidement >Vitesse de Lancer 20-80%', 'Hermes/tir_fulgurant.webp', 'Ame Infernale;Incompatible avec Aspect de Beowulf, Aspect d\'Héra'),
(11, 'Service Rapide', 'Autre', 'Commun', 'Votre Jauge Divine se remplit automatiquement >Vitesse de Remplissage 1(toutes les 2s)-1(toutes les 0.5s)', 'Hermes/service_rapide.webp', 'Soutien de Zeus, Soutien d\'Athéna, Soutien d\'Artémis, Soutien de Poséidon, Soutien d\'Aphrodite, Soutien d\'Arès, Soutien de Dionysos, Soutien de Demeter, Soutien d\'Hadès'),
(12, 'Récupération Rapide', 'Autre', 'Commun', 'Lorsque vous subissez des dégâts, enchainez rapidement avec un Elan afin de récupérer une partie de la Vie perdue >Vie Récupérée 30-60% des dégâts subis', 'Hermes/recuperation_rapide.webp', 'Aucun'),
(13, 'Hypervitesse', 'Autre', 'Commun', 'Lorsque vous vous Elancez, vous devenez brièvement Robuste, et vous vous déplacez 100% plus rapidement >Durée d\'Accélération 0.5-0.9s', 'Hermes/hypervitesse.webp', 'Aucun'),
(14, 'Livraison Express', 'Autre', 'Commun', 'Plus votre vitesse de déplacement est élevée, plus vous infligez de dégâts >Bonus de Dégâts par rapport aux Bonus de Vitesse 50-125%', 'Hermes/livraison_express.webp', 'Précipitation, Hypervitesse, Plume Etincelante'),
(15, 'Rappel ultime', 'Autre', 'Légendaire', 'Vos Munitions de Lancer reviennent automatiquement à vous >Délai de Rappel des Munitions de Lancer 0s', 'Hermes/rappel_ultime.webp', 'Ame Infernale;Tir Fulgurant, Recharge Rapide, Plume Etincelante'),
(16, 'Mauvaise Nouvelle', 'Autre', 'Légendaire', 'Votre Lancer inflige plus de dégâts aux ennemis sans Munitions de Lancer en eux >Dégâts du premier Lancer 50%', 'Hermes/mauvaise_nouvelle.webp', 'Ame Stygienne;Recharge Automatique, Plume Etincelante');

-- --------------------------------------------------------

--
-- Structure de la table `marteau`
--

CREATE TABLE `marteau` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Prérequis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marteau`
--

INSERT INTO `marteau` (`id`, `Nom`, `Type`, `Description`, `Image`, `Prérequis`) VALUES
(1, 'Déluge de Lames', 'Epée', 'Maintenez enfoncé votre bouton d\'Attaque pour frapper en continu, infligeant ainsi 25 points de dégâts de base par coup', 'Marteau/deluge_lames.webp', 'Incompatible avec Aspect d\'Arthur, Lame Tectonique, Lame Cruelle'),
(2, 'Supernova', 'Epée', 'Votre Technique s\'abat sur une zone plus large et inflige +20% de dégâts', 'Marteau/supernova.webp', 'Aucun'),
(3, 'Lame Tectonique', 'Epée', 'Votre Attaque devient une puissante fente infligeant 90 points de dégâts de base', 'Marteau/lame_techtonique.webp', 'Incompatible avec Aspect d\'Arthur, Lame Cruelle, Déluge de Lames'),
(4, 'Vague a lame', 'Epée', 'Votre attaque crée une vague capable de transpercer vos ennemis infligeant 30 points de dégâts', 'Marteau/vague_a_lame.webp', 'Aucun'),
(5, 'Double Nova', 'Epée', 'Votre Technique frappe deux fois, mais ne repousse plus vos ennemis', 'Marteau/double_nova.webp', 'aucun'),
(6, 'Lame Destructrice', 'Epée', 'Votre Attaque inflige +300% de dégâts à l\'Armure de vos ennemis', 'Marteau/lame_destructice.webp', 'aucun'),
(7, 'Double tranchant', 'Epée', 'Votre Assaut frappe deux fois et inflige +20% de dégâts', 'Marteau/double_tranchant.webp', 'aucun'),
(8, 'Lame Cruelle', 'Epée', 'Vos Coup d\'Estoc inflige +200% de dégâts et a +40% de chances d\'infliger des dégâts Critiques', 'Marteau/lame_cruelle.webp', 'Incompatible avec Aspect d\'Arthur, Lame Tectonique, Déluge de Lames'),
(9, 'Lame Sournoise', 'Epée', 'Votre Attaque inflige +200% de dégâts lorsque vous frappez vos ennemis par derrière', 'Marteau/lame_sournoise.webp', 'aucun'),
(10, 'Lame Maudite', 'Epée', 'Votre Attaque restaure 2 PV par coup, mais vous avez -60% de vie en moins', 'Marteau/lame_maudite.webp', 'aucun'),
(11, 'Lame Cupide', 'Epée', 'Votre Attaque inflige plus de dégâts, à hauteur de 5% de votre total actuel d\'Or', 'Marteau/lame_cupide.webp', 'aucun'),
(12, 'Nova Percutante', 'Epée', 'Votre technique vous projette en avant, puis vous rend Robuste pendant 1s', 'Marteau/nova_percutante.webp', 'aucun'),
(13, 'Consécration Suprême', 'Epée', 'Sainte Lame d\'Excalibur: Votre aura couvre une surface +45% plus grande et rend vos ennemis +10% plus lents', 'Marteau/consecration_supreme.webp', 'Aspect d\'Arthur'),
(14, 'Flèches Jumelles', 'Arc', 'Votre Attaque tire 2 projectiles côte à côte, mais sa portée est réduite', 'Marteau/fleche_jumelles.webp', 'Incompatible avec Tir Eloigné, Flèche Triple'),
(15, 'Tir Eloigné', 'Arc', 'Votre Attaque inflige +200% de dégâts aux ennemis éloignés', 'Marteau/tir_eloigne.webp', 'Incompatible avec Flèches Jumelles, Tir à bout Portant'),
(16, 'Flèche Explosive', 'Arc', 'Votre Attaque inflige +300% de dégâts en zone, mais met plus de temps à préparer', 'Marteau/fleche_explosive.webp', 'Incompatible avec Pluie de Flèches, Flèche Chasseuse'),
(17, 'Pluie de Flèches', 'Arc', 'Maintenez enfoncé votre bouton d\'Attaque pour tirer rapidement; vous ne pouvez plus effectuer de Tir Puissant', 'Marteau/pluie_fleche.webp', 'Incompatible avec Aspect de Rama, Flèche Explosive, Flèche Parfaite'),
(18, 'Barrage Destructeur', 'Arc', 'Votre Technique transperce vos ennemis et inflige +400% de dégâts à leur Armure', 'Marteau/barrage_destructeur.webp', 'Incompatible avec Aspect de Rama'),
(19, 'Flèche Parfaite', 'Arc', 'Votre Tir Puissant est plus facile a effectuer et inflige +150% de dégâts', 'Marteau/tir_parfait.webp', 'Incompatible avec Pluie de Flèches'),
(20, 'Barrage Impitoyable', 'Arc', 'Votre Technique tire +4 flèches supplémentaires', 'Marteau/barrage_impitoyable.webp', 'Incompatible avec Barrage Chargé'),
(21, 'Flèche Triple', 'Arc', 'Votre Attaque tire 3 flèches en cône', 'Marteau/fleche_triple.webp', 'Incompatible avec Flèches Jumelles'),
(22, 'Barrage Chargé', 'Arc', 'Maintenez enfoncé votre bouton de Technique pour infliger jusqu\'a +250% de dégâts; sa portée minimale est réduite', 'Marteau/barrage_charge.webp', 'Incompatible avec Aspect de Rama, Aspect de Chiron, Barrage Impitoyable'),
(23, 'Flèche Chasseuse', 'Arc', 'Votre Attaque frappe jusqu\'à 3 ennemis; infligeant +15% de dégâts supplémentaires après un rebond', 'Marteau/fleche_chasseuse.webp', 'Incompatible avec Flèche Explosive'),
(24, 'Tir à Bout Portant', 'Arc', 'Votre Attaque inflige +150% de dégâts aux ennemis proches', 'Marteau/tir_bout_portant.webp', 'Incompatible avec Tir Eloigné'),
(25, 'Barrage Concentré', 'Arc', 'Votre Technique inflige +3 points de dégâts de base pour chaque projectile consécutif blessant un ennemis', 'Marteau/barrage_concentre.webp', 'Incompatible avec Aspect de Rama'),
(26, 'Tir de Recul', 'Arc', 'Sharanga: Vous émettez une Onde de Choc lorsque vous Attaquez', 'Marteau/tir_de_recul.webp', 'Aspect de Rama'),
(27, 'Assaut Fracassant', 'Bouclier', 'Votre Assaut inflige +50% de dégâts dans une zone plus grande', 'Marteau/assaut_fracassant.webp', 'aucun'),
(28, 'Tir Chargé', 'Bouclier', 'Votre Charge tire à la place un projectile perforant infligeant 80 points de dégâts', 'Marteau/tir_cahrge.webp', 'aucun'),
(29, 'Disque Effroyable', 'Bouclier', 'Votre Technique peut frapper jusqu\'à 4 ennemis supplémentaires avant de revenir', 'Marteau/disque_effroyable.webp', 'Incompatible avec Aspect de Zeus'),
(30, 'Retour Explosif', 'Bouclier', 'Votre Technique inflige 50 points de dégâts aux ennemis autour de vous lorsque vous récupérez votre bouclier', 'Marteau/retour_explosif.webp', 'aucun'),
(31, 'Charge Destructrice', 'Bouclier', 'Votre Charge inflige +400% de dégâts à l\'Armure de vos ennemis', 'Marteau/charge_destructrice.webp', 'aucun'),
(32, 'Charge Fulgurante', 'Bouclier', 'Votre Charge met moins de temps à préparer', 'Marteau/charge_fulgurante.webp', 'aucun'),
(33, 'Choc Pulvérisateur', 'Bouclier', 'Votre Attaque frappe deux fois de plus, mais ne repousse plus vos ennemis', 'Marteau/choc_pulverisateur.webp', 'aucun'),
(34, 'Charge du Minotaure', 'Bouclier', 'Votre Charge peut effectuer une Charge Puissante infligent +500% de dégâts', 'Marteau/charge_minotaure.webp', 'aucun'),
(35, 'Disque Renforcé', 'Bouclier', 'Maintenez enfoncé votre bouton de Technique pour charger votre lancer de bouclier et infliger jusqu\'à +200% de dégâts', 'Marteau/disque_renforce.webp', 'Incompatible avec Aspect de Zeus, Aspect de Chaos, Disque d\'Assaut'),
(36, 'Disque Vivifiant', 'Bouclier', 'Lorsque votre Technique frappe un ennemis, vos 2 prochaines Attaques infligent +80% de dégâts', 'Marteau/disque_vivifiant.webp', 'aucun'),
(37, 'Garde Féroce', 'Bouclier', 'Lorsque vous parez une attaque, vos dégâts et votre vitesse de déplacement augmentent de +20% pendant 10s', 'Marteau/garde_feroce.webp', 'aucun'),
(38, 'Disque d\'Assaut', 'Bouclier', 'Lorque vous vous Elancez, votre Technique est plus rapide et inflige +200% de dégâts', 'Marteau/disque_assaut.webp', 'Incompatible avec Aspect de Zeus; Disque Renforce'),
(39, 'Défense Inébranlable', 'Bouclier', 'Lorsque vous utilisez votre Charge du Dragon, vous devenez Robuste pendant 3s', 'Marteau/defense_inebranlable.webp', 'Aspect de Beowulf'),
(40, 'Pointe Extensible', 'Lance', 'Votre Attaque a une portée plus élevée et inflige +40% de dégâts aux ennemis éloignés', 'Marteau/pointe_extensible.webp', 'aucun'),
(41, 'Déluge de Pointes', 'Lance', 'Maintenez enfoncé votre bouton d\'Attaque pour frapper rapidement; vous ne pouvez plus effectuer votre Balayage', 'Marteau/deluge_pointes.webp', 'Incompatible avec Aspect d\'Hadès, Aspect de Guan Yu, Balayage Rugissant, Balayage Magistral, Balayage Fulgurant'),
(42, 'Broche Explosive', 'Lance', 'Votre Techique devient un projectile infligeant 50 points de dégâts en zone', 'Marteau/broche_explosive.webp', 'Incompatible avec Aspect d\'Achille, Aspect de Guan Yu, Broche Destructrice, Broche Cruelle'),
(43, 'Broche de Chasse', 'Lance', 'Votre Technique frappe jusqu\'à 7 ennemis; ses dégâts augmentent de +30% par ennemis touché', 'Marteau/broche_chasse.webp', 'Incompatible avec Aspect d\'Achille, Aspect de Guan Yu, Broche Explosive'),
(44, 'Broche Destructrice', 'Lance', 'Votre Tecnhique inflige +400% de dégâts à l\'Armure de vos ennemis', 'Marteau/broche_destructrice.webp', 'aucun'),
(45, 'Broche Cruelle', 'Lance', 'Votre Technique inflige +50% de dégâts; +50% de chance d\'infliger des dégâts Critiques au retour', 'Marteau/broche_cruelle.webp', 'Incompatible avec Aspect de Guan Yu, Broche Explosive'),
(46, 'Balayage Magistral', 'Lance', 'Votre Balayage inflige +125% de dégâts et couvre une plus grande surface', 'Marteau/blayage_magistral.webp', 'Incompatible avec Déluge de Pointes'),
(47, 'Balayage Fulgurant', 'Lance', 'Votre Balayage charge et récupère beaucoup plus rapidement', 'Marteau/balayage_fulgurant.webp', 'Incompatible avec Déluge de Pointes'),
(48, 'Pointe Crantée', 'Lance', 'Votre Assaut frappe 3 fois, mais la portée de votre Elan est réduite de -25%', 'Marteau/pointe_crantee.webp', 'Incompatible avec Deluge de Pointe'),
(49, 'Broche Renforcée', 'Lance', 'Maintenez enfoncé votre bouton de Technique pour infliger jusqu\'à +200% de dégâts; sa portée minimale est réduite', 'Marteau/broche_renforcee.webp', 'Incompatible avec Aspect d\'Achille'),
(50, 'Balayage Rugissant', 'Lance', 'Lorsque vous préparez votre Balayage, vous devenez Robuste et infligez régulièrement 40 points de dégâts aux ennemis autour de vous', 'Marteau/balayage_rugissant.webp', 'Incompatible avec Déluge de Pointes'),
(51, 'Triple Pointe', 'Lance', 'Votre Attaque frappe dans 3 direction à la fois devant vous', 'Marteau/triple_pointe.webp', 'aucun'),
(52, 'Serpent Ailé', 'Lance', 'Votre Balayage du Serpent voyage +80% plus longtemps', 'Marteau/serpent_aile.webp', 'Aspect de Guan Yu'),
(53, 'Poing Allongé', 'Poings', 'Votre Attaque a une portée augmentée et inflige +10% de dégâts', 'Marteau/poing_allonge.webp', 'Incompatible avec Aspect de Gilgamesh'),
(54, 'Poing Final', 'Poings', 'Votre Assaut inflige +60% de dégâts; il termine également votre série d\'Attaques', 'Marteau/poing_final.webp', 'Incompatible avec Aspect de Gilgamesh, Poing Lourd'),
(55, 'Poing par Poing', 'Poings', 'Votre Attaque inflige +5 points de dégâts de base pour chaque frappe consécutive blessant un ennemi', 'Marteau/poing_par_poing.webp', 'aucun'),
(56, 'Poing Destructeur', 'Poings', 'Votre Assaut transperce vos ennemis et inflige +900% de dégâts à leur Armure', 'Marteau/poing_destructeur.webp', 'aucun'),
(57, 'Poing Explosif', 'Poings', 'Votre Essor inflige +100% de dégâts en zone', 'Marteau/poing_explosif.webp', 'Incompatible avec Poing Cinétique'),
(58, 'Pied de Nez', 'Poings', 'Votre Technique devient un coup de pied sauté infligeant deux fois 40 points de dégâts', 'Marteau/pied_de_nez.webp', 'Incompatible avec Aspect de Talos, Poing Cinétique, Poing d\'Appui'),
(59, 'Poing d\'Appui', 'Poings', 'Maintenez enfoncé votre bouton de Technique pour augmenter sa portée et infliger jusqu\'à +100% de dégâts', 'Marteau/poing_d_appui.webp', 'Incompatible avec Aspect de Talos, Poing Cinétique, Pied de Nez'),
(60, 'Poing Vital', 'Poings', 'Vous restaurez +2% de vos Points de Vie à chaque fois que vous tuez un ennemi avec votre Technique', 'Marteau/poing_vital.webp', 'aucun'),
(61, 'Poing d\'Orgue', 'Poings', 'Votre Technique se termine par une puissante frappe au sol, infligeant 90 points de dégâts aux ennemis autour de vous', 'Marteau/poing_d_orgue.webp', 'Incompatible avec Aspect de Demeter, Poing Cinétique'),
(62, 'Poing Cinétique', 'Poings', 'Votre Technique devient un tir chargé infligeant 50 points de dégâts de base', 'Marteau/poing_cinetique.webp', 'Incompatible avec Aspect de Gilgamesh, Aspect de Talos, Pied de Nez, Poing d\'Appui, Poing Explosif, Poing d\'Orgue'),
(63, 'Poing Colossal', 'Poings', 'Vous devenez Robuste lorsque vous utilisez votre Attaque ou votre Technique', 'Marteau/poing_colossal.webp', 'aucun'),
(64, 'Poing Lourd', 'Poings', 'Votre Attaque est une rafale de 3 coups; chaque coup inflige 40 points de dégâts de base', 'Marteau/poing_lourd.webp', 'Incompatible avec Aspect de Gilgamesh, Poing Final'),
(65, 'Griffes Déchirantes', 'Poings', 'Les ennemis Mutilés subissent +25% de dégâts et se déplacent 30% plus lentement', 'Marteau/griffes_dechirantes.webp', 'Aspect de Gilgamesh'),
(66, 'Système de Visée', 'Canon', 'Les ennemis ciblés par votre Technique se déplacent plus lentement et subissent +30% de dégâts', 'Marteau/systeme_de_visee.webp', 'Aucun'),
(67, 'Feu à Volonté', 'Canon', 'Votre attaque est plus rapide et plus précise; la capacité du magasin augmente de +6 munitions', 'Marteau/feu_volonte.webp', 'Incompatible avec Aspect de Lucifer, Tir Dispersif, Chambre Delta'),
(68, 'Tir Dispersif', 'Canon', 'Votre Attaque inflige 40 points de dégâts de base en cône et à courte portée; vous possédez -6 munitions', 'Marteau/tir_dispersif.webp', 'Incompatible avec Aspect de Lucifer, Feu à Volonté, Chambre Delta, Tir de Ricochet, Munitions Chercheuses'),
(69, 'Lance-Roquette', 'Canon', 'Votre Technique devient un missile infligeant 80 points de dégâts de base', 'Marteau/lance_roquette.webp', 'Incompatible avec Aspect de Lucifer, Bombe Périlleuse'),
(70, 'Triple Bombardement', 'Canon', 'Vous pouvez utiliser votre Technique 3 fois de suite avant de devoir recharger', 'Marteau/triple_bombardement.webp', 'Incompatible avec Bombe Périlleuse, Bombe à Fragmentation'),
(71, 'Munitions Perforantes', 'Canon', 'Votre Attaque transperce vos ennemis et inflige +50% de dégâts à l\'Armure', 'Marteau/munitions_perforantes.webp', 'Incompatible avec Munitions Explosives, Munitions Chercheuses'),
(72, 'Munitions Explosives', 'Canon', 'Votre Attaque inflige des dégâts en zone et étourdit brièvement vos ennemis', 'Marteau/munitions_explosives.webp', 'Incompatible avec Aspect de Lucifer, Tir de Ricochet, Munitions Perforantes'),
(73, 'Chambre Delta', 'Canon', 'Votre Attaque tire par rafales de 3 projectiles; vous n\'avez plus besoin de Recharger', 'Marteau/chambre_delta.webp', 'Incompatible avec Aspect de Lucifer, Feu à Volonté, Tir Dispersif'),
(74, 'Bombe Périlleuse', 'Canon', 'Votre Technique inflige +300% de dégâts dans une zone élargie; mais elle peut également vous blesser', 'Marteau/bombe_perilleuse.webp', 'Incompatible avec Aspect de Lucifer, Aspect d\'Eris, Lance-Roquette, Bombe à Fragmentation, Triple Bombardement'),
(75, 'Bombe à Fragmentation', 'Canon', 'Votre Technique tire 5 bombes a la fois, mais inflige -30% de dégâts', 'Marteau/bombe_fragmentation.webp', 'Incompatible avec Aspect de Lucifer, Triple Bombardement, Bombe Périlleuse'),
(76, 'Tir de Ricochet', 'Canon', 'Votre Attaque rebondit d\'un ennemi à l\'autre 1 fois', 'Marteau/tir_de_ricochet.webp', 'Incompatible avec Aspect de Lucifer, Munitions Explosives, Tir Dispersif, Munitions Chercheuses'),
(77, 'Munitions Chercheuses', 'Canon', 'Votre Attaque traque l\'ennemi le plus proche et inflige +10% de dégâts', 'Marteau/munitions_chercheuses.webp', 'Incompatible avec Aspect de Lucifer, Tir Dispersif, Munitions Perforantes, Tir de Ricochet'),
(78, 'Brasier Infernal', 'Canon', 'Igneus Eden: Les ondes générées par vos Feux Infernaux infligent +250% de dégâts dans une zone plus large', 'Marteau/brasier_infernal.webp', 'Aspect de Lucifer'),
(79, 'Rayon Triple', 'Canon', 'Igneus Eden: Votre Attaque émet 3 rayons en cône', 'Marteau/rayon_triple.webp', 'Aspect de Lucifer'),
(80, 'Combustion Instantanée', 'Canon', 'Igneus Eden: Votre attaque a une cadence de tir +50% plus élevée, et sa portée est de +15% plus grande', 'Marteau/combustion_instantanee.webp', 'Aspect de Lucifer'),
(81, 'Rayon Concentré', 'Canon', 'Igneus Eden: Les dégâts de votre Attaque augmentent +100% plus rapidement', 'Marteau/rayon_concentre.webp', 'Aspect de Lucifer;Incompatible avec Réacteur Perpétuel'),
(82, 'Réacteur Perpétuel', 'Canon', 'Igneus Eden: Votre Attaque n\'a plus besoin d\'être rechargée en Energie, mais ses dégâts n\'augmentent pas avec le temps', 'Marteau/reacteur_perpetuel.webp', 'Aspect de Lucifer;Incompatible avec Rayon Concentré');

-- --------------------------------------------------------

--
-- Structure de la table `mirroir_cache`
--

CREATE TABLE `mirroir_cache` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Ligne` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mirroir_cache`
--

INSERT INTO `mirroir_cache` (`id`, `Nom`, `Ligne`, `Description`) VALUES
(1, 'Présence Féroce', 1, 'Infligez plus de dégâts d\'Attaque et de Technique lorsque vous frappez des ennemis indemnes, 0-75% de dégâts'),
(2, 'Régénération Obscure', 2, 'Restaurez une petite fraction de votre Vie lorsque vous ramassez des Obsidiennes, 0-60% Points de Vie restaurés'),
(3, 'Refus Obstiné', 3, 'Restaurez 30% de Vie au lieu de mourir lorsque vos Points de Vie tombent à zéro, 1 fois par chambre'),
(4, 'Réflexe Impitoyable', 4, 'Augmentez de +50% vos dégâts et vos chances d\'esquive pendant 2s lorsque vous vous Elancez juste avant de subir des dégâts'),
(5, 'Sang Froid', 5, 'Reduisez les dégâts et la vitesse de déplacement des ennemis ayant des Munitions de Lancers en eux, 0-30% de réduction'),
(6, 'Ame Stygienne', 6, 'Régénérez vos Munitions pour votre Lancer (au lieu d\'avoir a le ramasser), 5-3s de durée de régénération'),
(7, 'Toucher de Midas', 7, 'Obtenez de l\'argent lorsque vous quittez une région des Enfers, 0-15% de votre Or'),
(8, 'Ferme Conviction', 8, 'Infligez plus de dégâts lorsque vous possédez 80% de votre total de Points de Vie ou plus, 0-25% de dégâts'),
(9, 'Chouchou de la Famille', 9, 'Infligez plus de dégâts pour chaque olympien dont vous possédez les Bienfaits, 0-5% de dégâts'),
(10, 'Prescience Obscure', 10, 'Augmentez vos chances de trouver des récompenses de type Dorée, à savoir Bienfait, Marteau de Dédale, Or, et Grenade, 0-20% de chances'),
(11, 'Héritage des Dieux', 11, 'Augmentez vos chances de trouver un Bienfait de qualité Légendaire ou de type Duo (si possible), 0-10% de chances'),
(12, 'Persuasion Predestinée', 12, 'Altérez aléatoirement les sélections de Bienfaits et d\'objet du Puit de Charon, 0-4 Dés');

-- --------------------------------------------------------

--
-- Structure de la table `mirroir_face`
--

CREATE TABLE `mirroir_face` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Ligne` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mirroir_face`
--

INSERT INTO `mirroir_face` (`id`, `Nom`, `Ligne`, `Description`) VALUES
(1, 'Présence Sournoise', 1, 'Infligez plus de dégâts d\'Attaque et de Technique lorsque vous frappez vos ennemis par derrière, 0-50% de dégâts'),
(2, 'Vitalité Chtonienne', 2, 'Retaurez une petite fraction de votre Vie lorsque vous quittez une chambre, 0-3 Points de Vie'),
(3, 'Refus de la Mort', 3, 'Restaurez 50% de Vie au lieu de mourir lorsque vos Points de Vie tombent à zéro, 0-3 Refus'),
(4, 'Réflexes Aiguisés', 4, 'Effectuez +1 Elan supplémentaire consécutivement'),
(5, 'Coup de Sang', 5, 'Ingligez plus de dégâts d\'Attaque et de Technique lorsque vous frappez des ennemis ayant des Munitions de Lancers en eux, 0-50% de dégâts'),
(6, 'Ame Infernale', 6, 'Augmentez votre réserve de Munitions pour votre Lancer, +0-2 Munitions de Lancer'),
(7, 'Poches Profondes', 7, 'Commencez chaque tentative d\'évasion des Enfers avec un peu d\'argent, 0-100 d\'or'),
(8, 'Peau Dure', 8, 'Augmentez votre total de Points de Vie, +0-50 Points de Vie'),
(9, 'Statut Privilégié', 9, 'Infligez plus de dégâts aux ennemis affectés par au moins 2 Malédictions d\'Etat, 0-40% de dégâts'),
(10, 'Faveur de l\'Olympe', 10, 'Augmentez vos chances de trouver un Bienfait de qualité Rare, 0-40% de chances'),
(11, 'Orgueil des Dieux', 11, 'Augmentez vos chances de trouver un Bienfait de qualité Epique, 0-20% de chances'),
(12, 'Autorité Predestinée', 12, 'Altérez aléatoirement la récompense de la prochaine chambre, 0-8 Dés');

-- --------------------------------------------------------

--
-- Structure de la table `poseidon_boon`
--

CREATE TABLE `poseidon_boon` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Rareté` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Prérequis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `poseidon_boon`
--

INSERT INTO `poseidon_boon` (`id`, `Nom`, `Type`, `Rareté`, `Description`, `Image`, `Prérequis`) VALUES
(1, 'Frappe Marine', 'Attaque', 'Commun', 'Votre Attaque est plus puissante et repousse vos ennemis >Dégâts d\'Attaque 30-75%', 'Poseidon/frappe_marine.webp', 'Aucun'),
(2, 'Technique Marine', 'Technique', 'Commun', 'Votre Technique est plus puissante et repousse vos ennemis >Dégâts de Technique 70-175%', 'Poseidon/technique_marine.webp', 'Aucun'),
(3, 'Tir de Submersion', 'Lancer', 'Commun', 'Votre Lancer inflige des dégâts en zone et repousse les ennemis >Dégâts de Lancer 60-96', 'Poseidon/Lancer.webp', 'Incompatible avec Aspect de Beowulf'),
(4, 'Déflagration Submergeante', 'Lancer', 'Commun', 'Votre Lancer inflige des dégâts aux ennemis autour de vous et les repousse >Dégâts de Lancer 60-96', 'Poseidon/Lancer.webp', 'Aspect de Beowulf'),
(5, 'Elan Marin', 'Elan', 'Commun', 'Votre Elan vous permet d\'infliger des dégâts aux ennemis autour de vous et de les repousser >Dégâts d\'Elan 35-56', 'Poseidon/elan_marin.webp', 'Aucun'),
(6, 'Soutien de Poséidon', 'Appel', 'Commun', 'Votre Appel vous permet de tacler vos ennemis tout en étant Invulnérable pendant 1,2s >Dégâts d\'Impact 250-400 >Bonus Jauge Pleine-Durée 7,2s', 'Poseidon/soutien_poseidon.webp', 'Aucun'),
(7, 'Point d\'Ebullition', 'Autre', 'Commun', 'Votre Jauge Divine se remplit plus vite lorsque vous subissez des dégâts >Vitesse de Remplissage sur Dégâts Subis 40-70%', 'Poseidon/point_ebullition.webp', 'Aucun'),
(8, 'Pression Hydraulique', 'Autre', 'Commun', 'Lorsque vous commencez un Combat, votre Attaque et votre Technique infligent plus de dégâts pendant 10s >Bonus de Degats 50-87,5%', 'Poseidon/pression_hydraulique.webp', 'Aucun'),
(9, 'Trésors Engloutis', 'Autre', 'Commun', 'Vous obtenez un assortiment aléatoire de Gemmes, Obsidiennes, Or, et de Soins', 'Poseidon/tresors_engloutis.webp', 'Aucun'),
(10, 'Richesse des Océans', 'Autre', 'Commun', 'Toutes les récompenses de chambre en Gemmes, Obsidiennes et Or valent davantage >Valeur des Récompenses 50-65%', 'Poseidon/richesses_oceans.webp', 'Aucun'),
(11, 'Typhon Déchainé', 'Autre', 'Commun', 'Vos ennemis subissent plus de dégâts lorsqu\'ils entrent en collision avec des obstacles >Dégâts de Collision 200-350%', 'Poseidon/typhon_dechaine.webp', 'Frappe Marine, Elan Marin, Technique Marine, Tir de Submersion, Déflagration Submergeante, Soutien de Poséidon'),
(12, 'Mer Déchainée', 'Autre', 'Commun', 'Vos Bienfait a effet de poussée infligent plus de dégâts aux Boss des Enfers >Dégâts vs Boss 20-50%', 'Poseidon/mer_dechainee.webp', 'Frappe Marine;Elan Marin;Technique Marine;Tir de Submersion;Déflagration Submergeante;Soutien de Poséidon'),
(13, 'Courant de Ressac', 'Autre', 'Commun', 'Votre Appel dure plus longtemps et attire les ennemis vers vous >Bonus de Durée 1-1,75s', 'Poseidon/courant_ressac.webp', 'Soutien de Poséidon'),
(14, 'Déferlante', 'Autre', 'Commun', 'Projeter un ennemi contre un obstacle déclenche une explosion d\'eau dans la zone >Dégâts d\'Explosion 100-250', 'Poseidon/deferlante.webp', 'Frappe Marine, Elan Marin, Technique Marine, Tir de Submersion, Déflagration Submergeante, Soutien de Poséidon'),
(15, 'Récifs Tranchants', 'Autre', 'Commun', 'Vos Bienfaits a effet de poussée appliquent également l\'état Fracturé >Dégâts de Fracture 10-25(toutes les 0,2s)', 'Poseidon/recifs_tranchants.webp', 'Frappe Marine, Elan Marin, Technique Marine, Tir de Submersion, Déflagration Submergeante, Soutien de Poséidon'),
(16, 'Seconde Vague', 'Autre', 'Légendaire', 'Vos Bienfaits a effet de poussée bousculent vos ennemis plusieurs fois >Bousculades Supplémentaires 1', 'Poseidon/seconde_vague.webp', 'Frappe Marine, Elan Marin, Technique Marine, Tir de Submersion, Soutien de Poséidon;Typhon Dechainé, Déferlante'),
(17, 'Appât Irrésistible', 'Autre', 'Légendaire', 'Vous avez plus de chances de trouver un Coin de Pêche dans chaque Chambre >Fréquence des Coins de Pêche 20%', 'Poseidon/appat_irresistible.webp', 'Deux Parmi:;Trésors Engloutis, Conque, Richesse des Océans');

-- --------------------------------------------------------

--
-- Structure de la table `zeus_boon`
--

CREATE TABLE `zeus_boon` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Rareté` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Prérequis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `zeus_boon`
--

INSERT INTO `zeus_boon` (`id`, `Nom`, `Type`, `Rareté`, `Description`, `Image`, `Prérequis`) VALUES
(1, 'Frappe Foudroyante', 'Attaque', 'Commun', 'Votre Attaque produit une étincelle lorsqu\'elle inflige des dégâts à un ennemi >Dégâts d\'Etincelle: 10-20', 'Zeus/frappe_foudroyante.webp', 'Aucun'),
(2, 'Technique Foudroyante', 'Technique', 'Commun', 'Votre Technique déclenche un éclair qui s\'abat sur les ennemis a proximité >Dégâts de foudre 30-60', 'Zeus/technique_foudroyante.webp', 'Aucun'),
(3, 'Tir Foudroyant', 'Lancer', 'Commun', 'Votre Lancer projette une étincelle qui rebondit d\'un ennemi a l\'autre >Dégâts de lancer 60-90', 'Zeus/Lancer.webp', 'Incompatible avec Aspect de Beowulf'),
(4, 'Déflagration Foudroyante', 'Lancer', 'Commun', 'Votre Lancer fait s\'abattre un éclair sur les ennemis a proximité >Dégâts de lancer 60-96', 'Zeus/Lancer.webp', 'Aspect de Beowulf'),
(5, 'Elan Foudroyant', 'Elan', 'Commun', 'Votre Elan déclenche un éclair qui s\'abat sur les ennemis a proximité >Dégâts de Foudre 10-25', 'Zeus/elan_foudroyant.webp', 'Aucun'),
(6, 'Soutien de Zeus', 'Appel', 'Commun', 'Votre Appel foudroie en continu les ennemis a proximité pendant 1,5s >Dégâts de Foudre 50-65 >Bonus Jauge Pleine-Duree 9s ', 'Zeus/soutien_zeus.webp', 'Aucun'),
(7, 'Tourbillon de Force', 'Autre', 'Commun', 'Vous infligez plus de dégâts pendant les 15s suivant votre Appel >Bonus de Dégâts 20-30%', 'Zeus/tourbillon_force.webp', 'Aucun'),
(8, 'Réflexes Foudroyants', 'Autre', 'Commun', 'Lorsque vous vous Elancez juste avant de subir des dégâts, un ennemi a proximité est frappe par la foudre >Dégâts de Foudre 20-50', 'Zeus/reflexes_foudroyants.webp', 'Aucun'),
(9, 'Vengeance Céleste', 'Autre', 'Commun', 'Tout ennemi vous infligeant des dégâts est ensuite frappe par la foudre >Dégâts de vengeance 80-200', 'Zeus/vengeance_celeste.webp', 'Aucun'),
(10, 'Ciel Trouble', 'Autre', 'Commun', 'Votre Jauge Divine se remplit plus vite lorsque vous infligez ou subissez des dégâts >Vitesse de Remplissage 10-16%', 'Zeus/ciel_trouble.webp', 'Aucun'),
(11, 'Haute Tension', 'Autre', 'Commun', 'Vos infligent des dégâts sur une plus grande surface >Rayon de l\'impact 60-96%', 'Zeus/haute_tension.webp', 'Technique Foudroyante, Soutien de Zeus, Elan Foudroyant, Déflagration Foudroyante'),
(12, 'Double Impact', 'Autre', 'Commun', 'Vos éclairs ont une chance de frapper deux fois plutôt qu\'une >Probabilité 25-40%', 'Zeus/double_impact.webp', 'Technique Foudroyante, Soutien de Zeus, Elan Foudroyant, Déflagration Foudroyante'),
(13, 'Supraconductivité', 'Autre', 'Commun', 'Les étincelles que vous produisez rebondissent encore plus de fois avant de se dissiper >Nombre de Rebonds Supplémentaires 2-8', 'Zeus/supraconductivite.webp', 'Frappe Foudroyante, Tir Foudroyant'),
(14, 'Electricité Statique', 'Autre', 'Commun', 'Vos effets électriques appliquent l\'état Choqué >Dégâts de Choc 60-150', 'Zeus/electricite_statique.webp', 'Frappe Foudroyante, Tir Foudroyant, Technique Foudroyante, Soutien de Zeus, Elan Foudroyant, Déflagration Foudroyante, Vengeance Céleste, Réflexes Foudroyants'),
(15, 'Eclair Fractionné', 'Autre', 'Légendaire', 'Vous produisez une étincelle supplémentaire lorsque vous infligez des dégâts a vos ennemis avec vos Bienfaits électriques >Dégâts d\'étincelle 40', 'Zeus/eclair_fractionne.webp', 'Supraconductivite, Double Impact, Haute Tension');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aphrodite_boon`
--
ALTER TABLE `aphrodite_boon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ares_boon`
--
ALTER TABLE `ares_boon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `arme`
--
ALTER TABLE `arme`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `artemis_boon`
--
ALTER TABLE `artemis_boon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `athena_boon`
--
ALTER TABLE `athena_boon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `demeter_boon`
--
ALTER TABLE `demeter_boon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dionysos_boon`
--
ALTER TABLE `dionysos_boon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `duo`
--
ALTER TABLE `duo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hermes_boon`
--
ALTER TABLE `hermes_boon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `marteau`
--
ALTER TABLE `marteau`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mirroir_cache`
--
ALTER TABLE `mirroir_cache`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mirroir_face`
--
ALTER TABLE `mirroir_face`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `poseidon_boon`
--
ALTER TABLE `poseidon_boon`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `zeus_boon`
--
ALTER TABLE `zeus_boon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aphrodite_boon`
--
ALTER TABLE `aphrodite_boon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `ares_boon`
--
ALTER TABLE `ares_boon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `arme`
--
ALTER TABLE `arme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `artemis_boon`
--
ALTER TABLE `artemis_boon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `athena_boon`
--
ALTER TABLE `athena_boon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `demeter_boon`
--
ALTER TABLE `demeter_boon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `dionysos_boon`
--
ALTER TABLE `dionysos_boon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `duo`
--
ALTER TABLE `duo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `hermes_boon`
--
ALTER TABLE `hermes_boon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `marteau`
--
ALTER TABLE `marteau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT pour la table `mirroir_cache`
--
ALTER TABLE `mirroir_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `mirroir_face`
--
ALTER TABLE `mirroir_face`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `poseidon_boon`
--
ALTER TABLE `poseidon_boon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `zeus_boon`
--
ALTER TABLE `zeus_boon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
