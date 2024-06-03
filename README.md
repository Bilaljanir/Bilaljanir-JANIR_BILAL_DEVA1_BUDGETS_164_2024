# Projet JANIR_BILAL_DEVA1_BUDGETS_164_2024

## Prérequis

- **Serveur MySQL** (Laragon, HeidiSQL, UwAmp, XAMPP, MAMP, etc.)
- **Python** (version 3.6 ou plus récente)
- **PyCharm** ou un autre IDE de développement Python

## Installation du projet

### Étape 1: Cloner le projet

Dans un terminal de commande Windows, exécutez les commandes suivantes :

    bash
    cd C:\
    git clone https://github.com/Bilaljanir/JANIR_BILAL_DEVA1_BUDGETS_164_2024
    cd JANIR_BILAL_DEVA1_BUDGETS_164_2024
    rmdir /S/Q .git
    python -m venv .venv
    cd "C:\JANIR_BILAL_DEVA1_BUDGETS_164_2024\.venv\Scripts"
    activate
    cd C:\JANIR_BILAL_DEVA1_BUDGETS_164_2024
    python -m pip install --upgrade pip
    pip install -r requirements.txt
    echo Vos commandes ont été exécutées.
    pause
    exit

# Étape 2: Ouvrir le projet avec PyCharm

      Ouvrez PyCharm.
      Allez dans le menu File → Open.
      Sélectionnez le répertoire JANIR_BILAL_DEVA1_BUDGETS_164_2024.
      Assurez-vous que le répertoire .venv est présent dans le projet.

# Étape 3: Démarrer le serveur MySQL
 1. Démarrez votre serveur MySQL (Laragon, UwAmp, XAMPP, MAMP, etc.).
Importez la base de données à partir du fichier DUMP.
2. Démarrez votre serveur MySQL (Laragon, UwAmp, XAMPP, MAMP, etc.).
Importez la base de données à partir du fichier DUMP.


# Étape 4: Importer la base de données

1. Ouvrez le fichier APP_FILMS_164/database/1_ImportationDumpSql.py dans PyCharm.
2. Cliquez avec le bouton droit sur l'onglet de ce fichier et choisissez Run (ou utilisez le raccourci CTRL + MAJ + F10).

# Étape 5: Tester la connexion à la base de données
 
1.  Ouvrez le fichier APP_FILMS_164/database/2_test_connection_bd.py.
2. Cliquez avec le bouton droit sur l'onglet de ce fichier et choisissez Run (ou utilisez le raccourci CTRL + MAJ + F10).

# Étape 6: Démarrer le microframework FLASK

1. Dans le répertoire racine du projet, ouvrez le fichier run_mon_app.py.
2. Cliquez avec le bouton droit sur l'onglet de ce fichier et choisissez Run (ou utilisez le raccourci CTRL + MAJ + F10).


# Copier votre projet
Pour copier le projet et le personnaliser, exécutez les commandes suivantes dans un terminal de commande Windows :

        cd C:\
        git clone https://github.com/info164/2024_164_om.git VOTRENOM_VOTREPRENOM_VOTRECLASSE_VOTRESUJET_164_2024
        cd VOTRENOM_VOTREPRENOM_VOTRECLASSE_VOTRESUJET_164_2024
        rmdir /S/Q .git
        python -m venv .venv
        cd "C:\VOTRENOM_VOTREPRENOM_VOTRECLASSE_VOTRESUJET_164_2024\.venv\Scripts"
        activate
        cd C:\VOTRENOM_VOTREPRENOM_VOTRECLASSE_VOTRESUJET_164_2024
        python -m pip install --upgrade pip
        pip install -r requirements.txt
        echo Vos commandes ont été exécutées.
        pause
        exit
# Tester votre copie de la démo « film »

Répétez les étapes pour importer le dump et exécuter le projet.

# Changer le numéro du port du serveur FLASK

Modifiez le numéro du port FLASK dans le fichier .env pour éviter les conflits entre la démo et votre projet. Assurez-vous que les ports sont différents.

# Modifier le fichier .env

 * Ouvrez le fichier .env (à la racine de votre répertoire) et modifiez les variables suivantes :
        NAME_BD_MYSQL="VOTRENOM_VOTREPRENOM_VOTRECLASSE_VOTRESUJET_164_2024"
        NAME_FILE_DUMP_SQL_BD="../database/VOTRENOM_VOTREPRENOM_VOTRECLASSE_VOTRESUJET_164_2024.SQL"





