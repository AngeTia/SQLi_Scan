#!/bin/bash

# Définir les couleurs
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # Sans couleur

# Afficher "Think3r3r" en grand au début
echo -e "${BLUE}"
figlet -f slant SQLi Scan

signature="By Think3r3r"
printf "%*s\n" $((cols)) "$signature"
echo -e "${NC}"

# Vérifier si un domaine a été passé en argument
if [ -z "$1" ]; then  
    echo -e "${RED}Usage: $0 domain.com${NC}"  
    exit 1  
fi

# Définir le domaine cible
TARGET=$1

# Affichage de la progression lors de la récupération des URLs
echo -e "${BLUE}[+] Récupération des URLs depuis Wayback Machine pour ${GREEN}$TARGET${BLUE}..."

# Utiliser waybackurls et compter le nombre d'URLs récupérées
total_urls=$(waybackurls $TARGET | wc -l)
count=0

# Récupérer les URLs et afficher la progression
waybackurls $TARGET | while read url; do
    count=$((count + 1))
    progress=$((count * 100 / total_urls))
    echo -ne "${YELLOW}Progression : $progress%${NC}\r"  # Affiche la progression sur la même ligne
    echo $url >> target.txt
done

# Terminer l'affichage de la progression
echo -e "\n${GREEN}[+] URLs récupérées et sauvegardées dans target.txt.${NC}"

# Progression de la détection des vulnérabilités SQL
echo -e "${BLUE}[+] Détection des vulnérabilités SQL avec sqlidetector...${NC}"
for i in $(seq 1 5); do
    echo -e "${YELLOW}Progression : $((i * 20))%${NC}"
    sleep 1  # Simule une partie de la progression
done

# Exécution de sqlidetector
sqlidetector -f target.txt | tee sqliExploitTarget.txt
echo -e "${GREEN}[+] Rapport des vulnérabilités SQL sauvegardé dans sqliExploitTarget.txt.${NC}"

# Ajouter la signature Think3r3r
echo -e "\n${BLUE}[+] Auteur : Think3r3r${NC}"

# Ajouter une ligne de séparation
echo -e "${BLUE}--------------------------------------------------${NC}"