-- Database: JANIR_BILAL_DEVA1_BUDGET_164_2024

-- Destruction de la BD si elle existe. Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS JANIR_BILAL_DEVA1_BUDGETS_164_2024;

-- Création d'une nouvelle base de données

CREATE DATABASE IF NOT EXISTS JANIR_BILAL_DEVA1_BUDGETS_164_2024;

-- Utilisation de cette base de données

USE JANIR_BILAL_DEVA1_BUDGETS_164_2024;

-- --------------------------------------------------------

--
-- Structure de la table `budget`
--

CREATE TABLE `budget` (
  `budget_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `montant_initial` decimal(10,2) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  PRIMARY KEY (`budget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Contenu de la table `budget`

INSERT INTO `budget` (`budget_id`, `nom`, `montant_initial`, `date_debut`, `date_fin`) VALUES
(1, 'Budget 1', 1000.00, '2023-01-01', '2023-12-31'),
(2, 'Budget 2', 2000.00, '2023-02-01', '2023-11-30'),
(3, 'Budget 3', 1500.00, '2023-03-01', '2023-10-31'),
(4, 'Budget 4', 2500.00, '2023-04-01', '2023-09-30'),
(5, 'Budget 5', 3000.00, '2023-05-01', '2023-08-31'),
(6, 'Budget 6', 3500.00, '2023-06-01', '2023-07-31'),
(7, 'Budget 7', 4000.00, '2023-07-01', '2023-06-30'),
(8, 'Budget 8', 4500.00, '2023-08-01', '2023-05-31'),
(9, 'Budget 9', 5000.00, '2023-09-01', '2023-04-30'),
(10, 'Budget 10', 5500.00, '2023-10-01', '2023-03-31');

-- --------------------------------------------------------

--
-- Structure de la table `t_adresse`
--

CREATE TABLE `t_adresse` (
  `id_adresse` int NOT NULL AUTO_INCREMENT,
  `npa` varchar(10) NOT NULL,
  `rue` varchar(100) NOT NULL,
  `numero_rue` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `pays` varchar(100) NOT NULL,
  PRIMARY KEY (`id_adresse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Contenu de la table `t_adresse`

INSERT INTO `t_adresse` (`id_adresse`, `npa`, `rue`, `numero_rue`, `ville`, `pays`) VALUES
(1, '1400', 'rue de Lausanne', '53', 'Yverdon', 'Swiss'),
(2, '199', 'rue de Geneve', '32', 'Lausanne', 'Swiss'),
(3, '1000', 'rue de Neuchatel', '12', 'Neuchatel', 'Swiss'),
(4, '2000', 'rue de Fribourg', '21', 'Fribourg', 'Swiss'),
(5, '3000', 'rue de Berne', '45', 'Berne', 'Swiss'),
(6, '4000', 'rue de Zurich', '67', 'Zurich', 'Swiss'),
(7, '5000', 'rue de Lucerne', '89', 'Lucerne', 'Swiss'),
(8, '6000', 'rue de Bale', '23', 'Bale', 'Swiss'),
(9, '7000', 'rue de Sion', '34', 'Sion', 'Swiss'),
(10, '8000', 'rue de St-Gall', '56', 'St-Gall', 'Swiss');

-- --------------------------------------------------------

--
-- Structure de la table `t_categories`
--

CREATE TABLE `t_categories` (
  `id_categorie` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Contenu de la table `t_categories`

INSERT INTO `t_categories` (`id_categorie`, `nom_categorie`) VALUES
(1, 'Alimentation'),
(2, 'Transport'),
(3, 'Santé'),
(4, 'Divertissement'),
(5, 'Éducation'),
(6, 'Vêtements'),
(7, 'Logement'),
(8, 'Services publics'),
(9, 'Loisirs'),
(10, 'Autres');

-- --------------------------------------------------------

--
-- Structure de la table `t_depense`
--

CREATE TABLE `t_depense` (
  `id_depense` int NOT NULL AUTO_INCREMENT,
  `montant` decimal(10,2) NOT NULL,
  `date_depense` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_depense`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Contenu de la table `t_depense`

INSERT INTO `t_depense` (`id_depense`, `montant`, `date_depense`, `description`) VALUES
(1, 100.00, '2023-01-10', 'Achat nourriture'),
(2, 50.00, '2023-01-15', 'Ticket bus'),
(3, 200.00, '2023-01-20', 'Consultation médicale'),
(4, 75.00, '2023-01-25', 'Cinéma'),
(5, 150.00, '2023-01-30', 'Achat livre'),
(6, 80.00, '2023-02-05', 'Achat vêtements'),
(7, 1000.00, '2023-02-10', 'Loyer'),
(8, 60.00, '2023-02-15', 'Facture électricité'),
(9, 120.00, '2023-02-20', 'Salle de sport'),
(10, 45.00, '2023-02-25', 'Divers');

-- --------------------------------------------------------

--
-- Structure de la table `t_categories_depense`
--

CREATE TABLE `t_categories_depense` (
  `id_categories_depense` int NOT NULL AUTO_INCREMENT,
  `fk_categories` int DEFAULT NULL,
  `fk_depense` int DEFAULT NULL,
  PRIMARY KEY (`id_categories_depense`),
  KEY `fk_categories` (`fk_categories`),
  KEY `fk_depense` (`fk_depense`),
  CONSTRAINT `fk_categories` FOREIGN KEY (`fk_categories`) REFERENCES `t_categories` (`id_categorie`),
  CONSTRAINT `fk_depense` FOREIGN KEY (`fk_depense`) REFERENCES `t_depense` (`id_depense`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Contenu de la table `t_categories_depense`

INSERT INTO `t_categories_depense` (`id_categories_depense`, `fk_categories`, `fk_depense`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `t_email`
--

CREATE TABLE `t_email` (
  `id_email` int NOT NULL AUTO_INCREMENT,
  `adresse_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Contenu de la table `t_email`

INSERT INTO `t_email` (`id_email`, `adresse_email`) VALUES
(1, 'bilal@gmail.com'),
(2, 'test@gmail.com'),
(3, 'example@example.com'),
(4, 'contact@domain.com'),
(5, 'info@website.com'),
(6, 'admin@web.com'),
(7, 'support@service.com'),
(8, 'sales@shop.com'),
(9, 'user@platform.com'),
(10, 'client@business.com');

-- --------------------------------------------------------

--
-- Structure de la table `t_personne`
--

CREATE TABLE `t_personne` (
  `id_personne` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `fk_email` int DEFAULT NULL,
  `fk_adresse` int DEFAULT NULL,
  PRIMARY KEY (`id_personne`),
  KEY `fk_email` (`fk_email`),
  KEY `fk_adresse` (`fk_adresse`),
  CONSTRAINT `t_personne_ibfk_1` FOREIGN KEY (`fk_email`) REFERENCES `t_email` (`id_email`),
  CONSTRAINT `t_personne_ibfk_2` FOREIGN KEY (`fk_adresse`) REFERENCES `t_adresse` (`id_adresse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Contenu de la table `t_personne`

INSERT INTO `t_personne` (`id_personne`, `nom`, `prenom`, `fk_email`, `fk_adresse`) VALUES
(1, 'John', 'Doe', 1, 1),
(2, 'Jane', 'Doe', 2, 2),
(3, 'Alice', 'Smith', 3, 3),
(4, 'Bob', 'Johnson', 4, 4),
(5, 'Charlie', 'Brown', 5, 5),
(6, 'David', 'Wilson', 6, 6),
(7, 'Eva', 'Davis', 7, 7),
(8, 'Frank', 'Miller', 8, 8),
(9, 'Grace', 'Lee', 9, 9),
(10, 'Hank', 'Moore', 10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `montant` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Contenu de la table `transaction`

INSERT INTO `transaction` (`transaction_id`, `montant`, `date`) VALUES
(1, 100.00, '2023-01-01'),
(2, 200.00, '2023-01-02'),
(3, 150.00, '2023-01-03'),
(4, 250.00, '2023-01-04'),
(5, 300.00, '2023-01-05'),
(6, 350.00, '2023-01-06'),
(7, 400.00, '2023-01-07'),
(8, 450.00, '2023-01-08'),
(9, 500.00, '2023-01-09'),
(10, 550.00, '2023-01-10');

-- --------------------------------------------------------

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `budget`
--
ALTER TABLE `budget`
  MODIFY `budget_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `t_adresse`
--
ALTER TABLE `t_adresse`
  MODIFY `id_adresse` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `t_categories`
--
ALTER TABLE `t_categories`
  MODIFY `id_categorie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `t_categories_depense`
--
ALTER TABLE `t_categories_depense`
  MODIFY `id_categories_depense` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `t_depense`
--
ALTER TABLE `t_depense`
  MODIFY `id_depense` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `t_email`
--
ALTER TABLE `t_email`
  MODIFY `id_email` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `t_personne`
--
ALTER TABLE `t_personne`
  MODIFY `id_personne` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
