Bug Bounty Tools Installation Script

Ce dépôt contient un script Bash permettant d'installer automatiquement plusieurs outils utiles pour le Bug Bounty.

📌 Outils installés

🔍 Reconnaissance

Subfinder - Outil de découverte de sous-domaines

Sublist3r - Scanner de sous-domaines basé sur Python

httpx - Vérification de l'accessibilité des URL

gobuster - Outil de brute-force pour découvrir des fichiers et répertoires

gospider - Web crawler rapide

katana - Crawler web basé sur Go

getJS - Récupération des fichiers JavaScript d'un site

gau - Extraction des URL archivées

waybackurls - Extraction des URL depuis Wayback Machine

linkfinder - Analyse des liens JavaScript

🔎 Fuzzing & Brute-force

ffuf - Fuzzing rapide

arjun - Détection automatique des paramètres GET et POST

uro - Nettoyage des URL dupliquées

jaeles - Outil de fuzzing basé sur YAML

nuclei - Scanner de vulnérabilités basé sur des templates

🚨 Attaques Spécifiques

dalfox - Détection de vulnérabilités XSS

xsstrike - Scanner avancé de XSS

tplmap - Détection et exploitation de Server-Side Template Injection (SSTI)

sstimap - Scanner de SSTI

ssrfmap - Exploitation des attaques SSRF

smuggler - Scanner de HTTP Request Smuggling

openredirex - Détection de vulnérabilités de redirection ouverte

graphqlmap - Exploitation d'API GraphQL

headi - Analyse des en-têtes HTTP

crlfuzz - Scanner de vulnérabilités CRLF Injection

injectus - Scanner d'injections SQL et NoSQL

corsy - Détection de vulnérabilités CORS

xsrfprobe - Analyse de vulnérabilités CSRF

fdsploit - Détection d'exposition de fichiers sensibles

🚀 Installation

Clonez le dépôt :

git clone https://github.com/votre-repo/bugbounty-tools.git
cd bugbounty-tools

Donnez les permissions d'exécution au script :

chmod +x install.sh

Exécutez le script :

./install.sh

📜 Prérequis

Linux ou macOS

apt, pip3, et go installés

Droits administrateurs si nécessaire

🛠️ Personnalisation

Vous pouvez modifier le script install.sh pour ajouter ou supprimer des outils selon vos besoins.

💡 Remarque

L'utilisation de ces outils doit se faire dans un cadre légal et éthique. Toujours obtenir une autorisation avant de tester un système tiers.

🎯 Contribuez ! N'hésitez pas à ouvrir une issue ou une pull request pour améliorer ce projet ! 🚀
