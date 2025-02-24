# SQLi Scan - Automatisation de la détection de vulnérabilités SQL

SQLi Scan est un script Bash conçu pour automatiser la récupération des URLs d'un domaine à l'aide de la Wayback Machine, puis d'exécuter une détection de vulnérabilités SQL à l'aide de `sqlidetector`. Ce projet est particulièrement utile pour les pentesters et les chercheurs en sécurité qui souhaitent rapidement analyser un site pour des vulnérabilités SQL.

## Table des matières

- [Fonctionnalités](#fonctionnalités)
- [Prérequis](#prérequis)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Exemple de sortie](#exemple-de-sortie)
- [Contribution](#contribution)
- [Licence](#licence)

## Fonctionnalités

- Récupération des URLs d'un domaine via la Wayback Machine.
- Détection de vulnérabilités SQL sur les URLs récupérées.
- Sauvegarde des résultats dans des fichiers de sortie (`target.txt` et `sqliExploitTarget.txt`).
- Affichage de la progression des différentes étapes du processus.
- Personnalisation des couleurs pour une meilleure visibilité dans le terminal.

## Prérequis

Avant d'utiliser ce script, assurez-vous que les outils suivants sont installés sur votre machine :

- [figlet](http://www.figlet.org/)
- [waybackurls](https://github.com/tomnomnom/waybackurls)
- [sqlidetector](https://github.com/sqlmapproject/sqlmap) ou un autre outil de détection de vulnérabilités SQL

Si vous ne les avez pas, installez-les en suivant les instructions spécifiques à chaque outil.

## Installation

1. Clonez ce dépôt sur votre machine locale :

   ```bash
   git clone https://github.com/Think3r3r/SQLi-Scan.git
   cd SQLi-Scan
   
2. Assurez-vous que le script est exécutable

```bash
chmod +x sqli_scan.sh
./sqli_scan.sh domain.com

