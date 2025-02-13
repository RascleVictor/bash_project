#!/bin/bash

command_exists() {

    command -v "$1" >/dev/null 2>&1

}

echo "⏳ Mise à jour des paquets système..."

sudo apt update && sudo apt upgrade -y

install_go() {

    echo "⏳ Vérification de Go..."

    if command_exists go; then
        echo "✅ Go est déjà installé : $(go version)"
    else
        echo "⚠️ Go n'est pas installé. Installation en cours..."
        sudo apt install -y golang
        if command_exists go; then
            echo "✅ Go installé avec succès : $(go version)"
        else
            echo "❌ Échec de l'installation de Go."
            exit 1
        fi
    fi
}

install_pip() {

    echo "⏳ Vérification de pip3..."

    if command_exists pip3; then
        echo "✅ pip3 est déjà installé : $(pip3 --version)"
    else
        echo "⚠️ pip3 n'est pas installé. Installation en cours..."
        sudo apt install -y python3-pip
        if command_exists pip3; then
            echo "✅ pip3 installé avec succès : $(pip3 --version)"
        else
            echo "❌ Échec de l'installation de pip3."
            exit 1
        fi
    fi
}

install_pipx() {

    echo "⏳ Vérification de pipx..."

    if command_exists pipx; then
        echo "✅ pipx est déjà installé : $(pipx --version)"
    else
        echo "⚠️ pipx n'est pas installé. Installation en cours..."
        sudo apt install -y python3-pipx
        if command_exists pipx; then
            echo "✅ pipx installé avec succès : $(pipx --version)"
        else
            echo "❌ Échec de l'installation de pipx."
            exit 1
        fi
    fi
}


install_subfinder() {

    echo "⏳ Installation de Subfinder..."

    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

    if command_exists subfinder; then
        echo "✅ Subfinder installé avec succès."
        echo "📦 Copie de Subfinder dans /usr/local/bin..."
        sudo cp ~/go/bin/subfinder /usr/local/bin/
        if command_exists subfinder; then
            echo "✅ Subfinder est maintenant accessible globalement."
        else
            echo "❌ Échec de la copie de Subfinder dans /usr/local/bin."
            exit 1
        fi
    else
        echo "❌ Échec de l'installation de Subfinder."
        exit 1
    fi
}

install_sublist3r() {

    echo "⏳ Clonage du dépôt Sublist3r..."

    git clone https://github.com/aboul3la/Sublist3r.git

    cd Sublist3r || exit 1

    echo "⏳ Installation des dépendances de Sublist3r..."

    sudo pip3 install -r requirements.txt

    if command_exists sublist3r; then
        echo "✅ Sublist3r installé avec succès."
    else
        echo "❌ Échec de l'installation de Sublist3r."
        exit 1
    fi
}

install_httpx() {

    echo "⏳ Installation de httpx..."

    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

    if command_exists httpx; then
        echo "✅ httpx installé avec succès."
        echo "📦 Copie de httpx dans /usr/local/bin..."
        sudo cp ~/go/bin/httpx /usr/local/bin/
        if command_exists httpx; then
            echo "✅ httpx est maintenant accessible globalement."
        else
            echo "❌ Échec de la copie de httpx dans /usr/local/bin."
            exit 1
        fi
    else
        echo "❌ Échec de l'installation de httpx."
        exit 1
    fi
}

install_gobuster() {

    echo "⏳ Installation de Gobuster..."

    go install github.com/OJ/gobuster/v3@latest

    if command_exists gobuster; then
        echo "✅ Gobuster installé avec succès."
        echo "📦 Copie de Gobuster dans /usr/local/bin..."
        sudo cp ~/go/bin/gobuster /usr/local/bin/
        if command_exists gobuster; then
            echo "✅ Gobuster est maintenant accessible globalement."
        else
            echo "❌ Échec de la copie de Gobuster dans /usr/local/bin."
            exit 1
        fi
    else
        echo "❌ Échec de l'installation de Gobuster."
        exit 1
    fi
}

install_gospider() {

    echo "⏳ Installation de GoSpider..."

    go install github.com/jaeles-project/gospider@latest

    if command_exists gospider; then
        echo "✅ GoSpider installé avec succès."
        echo "📦 Copie de GoSpider dans /usr/local/bin..."
        sudo cp ~/go/bin/gospider /usr/local/bin/
        if command_exists gospider; then
            echo "✅ GoSpider est maintenant accessible globalement."
        else
            echo "❌ Échec de la copie de GoSpider dans /usr/local/bin."
            exit 1
        fi
    else
        echo "❌ Échec de l'installation de GoSpider."
        exit 1
    fi
}

install_katana() {

    echo "⏳ Installation de Katana..."

    go install github.com/projectdiscovery/katana/cmd/katana@latest

    if command_exists katana; then
        echo "✅ Katana installé avec succès."
        echo "📦 Copie de Katana dans /usr/local/bin..."
        sudo cp ~/go/bin/katana /usr/local/bin/
        if command_exists katana; then
            echo "✅ Katana est maintenant accessible globalement."
        else
            echo "❌ Échec de la copie de Katana dans /usr/local/bin."
            exit 1
        fi
    else
        echo "❌ Échec de l'installation de Katana."
        exit 1
    fi
}

install_getjs() {

    echo "⏳ Installation de getJS..."

    go install github.com/003random/getJS/v2@latest

    if command_exists getJS; then

        echo "✅ getJS installé avec succès."

        echo "📦 Copie de getJS dans /usr/local/bin..."

        sudo cp ~/go/bin/getJS /usr/local/bin/

        if command_exists getJS; then
            echo "✅ getJS est maintenant accessible globalement."
        else
            echo "❌ Échec de la copie de getJS dans /usr/local/bin."
            exit 1
        fi
    else
        echo "❌ Échec de l'installation de getJS."
        exit 1
    fi
}

install_gau() {

    echo "⏳ Installation de gau..."

    go install github.com/lc/gau/v2/cmd/gau@latest

    if command_exists gau; then
        echo "✅ gau installé avec succès."
        echo "📦 Copie de gau dans /usr/local/bin..."
        sudo cp ~/go/bin/gau /usr/local/bin/
        if command_exists gau; then
            echo "✅ gau est maintenant accessible globalement."
        else
            echo "❌ Échec de la copie de gau dans /usr/local/bin."
            exit 1
        fi
    else
        echo "❌ Échec de l'installation de gau."
        exit 1
    fi
}

install_waybackurls() {

    echo "⏳ Installation de waybackurls..."

    go install github.com/tomnomnom/waybackurls@latest

    if command_exists waybackurls; then

        echo "✅ waybackurls installé avec succès."

        echo "📦 Copie de waybackurls dans /usr/local/bin..."

        sudo cp ~/go/bin/waybackurls /usr/local/bin/

        if command_exists waybackurls; then

            echo "✅ waybackurls est maintenant accessible globalement."

        else

            echo "❌ Échec de la copie de waybackurls dans /usr/local/bin."

            exit 1

        fi

    else

        echo "❌ Échec de l'installation de waybackurls."

        exit 1

    fi

}


install_linkfinder() {

    echo "⏳ Clonage du dépôt LinkFinder..."

    git clone https://github.com/GerbenJavado/LinkFinder.git

    cd LinkFinder || exit 1

    echo "⏳ Installation de LinkFinder..."

    sudo python3 setup.py install

    if command_exists linkfinder; then

        echo "✅ LinkFinder installé avec succès."

    else

        echo "❌ Échec de l'installation de LinkFinder."

        exit 1

    fi

}

install_arjun() {

    echo "⏳ Installation d'Arjun..."

    pipx install arjun

    if command_exists arjun; then
        echo "✅ Arjun installé avec succès."
    else
        echo "❌ Échec de l'installation d'Arjun."
        exit 1
fi
}

install_uro() {

 echo "⏳ Installation de Uro..."
 pipx install uro
if command_exists uro; then
 echo "✅ Uro installé avec succès."
 else
echo "❌ Échec de l'installation de Uro."
exit 1
fi
}


 install_ffuf() {

echo "⏳ Installation de ffuf..."

go install github.com/ffuf/ffuf/v2@latest

if command_exists ffuf; then
  echo "✅ ffuf installé avec succès."
  echo "📦 Copie de ffuf dans /usr/local/bin..."
  sudo  cp ~/go/bin/ffuf  /usr/local/bin/
  echo "✅ ffuf est maintenant accessible globalement."
else
  echo "❌ Échec de l'installation de ffuf."
  exit 1
fi
}

install_jaeles() {

 echo "⏳ Installation de Jaeles..."

 go install github.com/jaeles-project/jaeles@latest

if command_exists jaeles; then
    echo "✅ Jaeles installé avec succès."
    echo "📦 Copie de Jaeles dans /usr/local/bin..."
    sudo cp ~/go/bin/jaeles /usr/local/bin/
    echo "✅ Jaeles est maintenant accessible globalement."
else
    echo "❌ Échec de l'installation de Jaeles."
    exit 1
fi
}

install_nuclei() {

 echo "⏳ Installation de Nuclei..."

 go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

if command_exists nuclei; then
    echo "✅ Nuclei installé avec succès."
    echo "📦 Copie de Nuclei dans /usr/local/bin..."
    sudo cp ~/go/bin/nuclei /usr/local/bin/
    echo "✅ Nuclei est maintenant accessible globalement."
else
    echo "❌ Échec de l'installation de Nuclei."
    exit 1
fi
}

install_dalfox() {

 echo "⏳ Installation de Dalfox..."

 go install github.com/hahwul/dalfox/v2@latest

if command_exists dalfox; then
    echo "✅ Dalfox installé avec succès."
    echo "📦 Copie de Dalfox dans /usr/local/bin..."
    sudo cp ~/go/bin/dalfox /usr/local/bin/
    echo "✅ Dalfox est maintenant accessible globalement."
else
    echo "❌ Échec de l'installation de Dalfox."
    exit 1
fi
}

install_ssrfmap() {

 echo "⏳ Installation de SSRFmap..."

git clone https://github.com/swisskyrepo/SSRFmap.git || { echo "❌ Échec du clonage de SSRFmap."; exit 1; }

cd SSRFmap || { echo "❌ Impossible d'accéder au dossier SSRFmap."; exit 1; }

pip3 install -r requirements.txt || { echo "❌ Échec de l'installation des dépendances."; exit 1; }

echo "✅ SSRFmap installé avec succès."
}

install_smuggler() {

 echo "⏳ Installation de Smuggler..."

git clone https://github.com/defparam/smuggler.git || { echo "❌ Échec du clonage de Smuggler."; exit 1; }

echo "✅ Smuggler installé avec succès."
}

install_openredirex() {

 echo "⏳ Installation de OpenRedireX..."

git clone https://github.com/devanshbatham/openredirex || { echo "❌ Échec du clonage de OpenRedireX."; exit 1; }

cd openredirex || { echo "❌ Impossible d'accéder au dossier openredirex."; exit 1; }

sudo chmod +x setup.sh

./setup.sh || { echo "❌ Échec de l'installation de OpenRedireX."; exit 1; }

echo "✅ OpenRedireX installé avec succès."
}

install_graphqlmap() {

 echo "⏳ Installation de GraphQLmap..."

git clone https://github.com/swisskyrepo/GraphQLmap || { echo "❌ Échec du clonage de GraphQLmap."; exit 1; }

cd GraphQLmap || { echo "❌ Impossible d'accéder au dossier GraphQLmap."; exit 1; }

python3 setup.py install || { echo "❌ Échec de l'installation de GraphQLmap."; exit 1; }

echo "✅ GraphQLmap installé avec succès."
}

install_headi() {

 echo "⏳ Installation de Headi..."

 go install github.com/mlcsec/headi@latest

if command_exists headi; then
    echo "✅ Headi installé avec succès."
    echo "📦 Copie de Headi dans /usr/local/bin..."
    sudo cp ~/go/bin/headi /usr/local/bin/
    echo "✅ Headi est maintenant accessible globalement."
else
    echo "❌ Échec de l'installation de Headi."
    exit 1
fi
}

install_crlfuzz() {

 echo "⏳ Installation de CRLFuzz..."

 go install github.com/dwisiswant0/crlfuzz/cmd/crlfuzz@latest

if command_exists crlfuzz; then
    echo "✅ CRLFuzz installé avec succès."
    echo "📦 Copie de CRLFuzz dans /usr/local/bin..."
    sudo cp ~/go/bin/crlfuzz /usr/local/bin/
    echo "✅ CRLFuzz est maintenant accessible globalement."
else
    echo "❌ Échec de l'installation de CRLFuzz."
    exit 1
fi
}

install_injectus() {

 echo "⏳ Installation de Injectus..."

git clone https://github.com/dubs3c/Injectus.git || { echo "❌ Échec du clonage de Injectus."; exit 1; }

cd Injectus || { echo "❌ Impossible d'accéder au dossier Injectus."; exit 1; }

pip3.7 install -r requirements.txt --user || { echo "❌ Échec de l'installation des dépendances Injectus."; exit 1; }

echo "✅ Injectus installé avec succès."
}

install_corsy() {

 echo "⏳ Installation de Corsy..."

git clone https://github.com/s0md3v/Corsy.git || { echo "❌ Échec du clonage de Corsy."; exit 1; }

cd Corsy || { echo "❌ Impossible d'accéder au dossier Corsy."; exit 1; }

pip3 install requests || { echo "❌ Échec de l'installation de requests."; exit 1; }

echo "✅ Corsy installé avec succès."
}

install_xsrfprobe() {
echo "⏳ Installation de XSRFProbe..."

pip install xsrfprobe || { echo "❌ Échec de l'installation de XSRFProbe."; exit 1; }

echo "✅ XSRFProbe installé avec succès."
}

install_fdsploit() {

echo "⏳ Installation de FDsploit..."

git clone https://github.com/chrispetrou/FDsploit.git || { echo "❌ Échec du clonage de FDsploit."; exit 1; }

cd FDsploit || { echo "❌ Impossible d'accéder au dossier FDsploit."; exit 1; }

pip install -r requirements.txt || { echo "❌ Échec de l'installation des dépendances de FDsploit."; exit 1; }

echo "✅ FDsploit installé avec succès."
}

install_tplmap() {

echo "⏳ Installation de Tplmap..."

git clone https://github.com/epinna/tplmap.git || { echo "❌ Échec du clonage de Tplmap."; exit 1; }

cd tplmap || { echo "❌ Impossible d'accéder au dossier tplmap."; exit 1; }

pip install -r requirements.txt || { echo "❌ Échec de l'installation des dépendances de Tplmap."; exit 1; }

echo "✅ Tplmap installé avec succès."
}

install_sstimap() {

echo "⏳ Installation de SSTImap..."

git clone https://github.com/vladko312/SSTImap.git || { echo "❌ Échec du clonage de SSTImap."; exit 1; }

cd SSTImap || { echo "❌ Impossible d'accéder au dossier SSTImap."; exit 1; }

pip install -r requirements.txt || { echo "❌ Échec de l'installation des dépendances de SSTImap."; exit 1; }

echo "✅ SSTImap installé avec succès."
}

install_xsstrike() {

echo "⏳ Installation de XSStrike..."

git clone https://github.com/s0md3v/XSStrike.git || { echo "❌ Échec du clonage de XSStrike."; exit 1; }

cd XSStrike || { echo "❌ Impossible d'accéder au dossier XSStrike."; exit 1; }

pip install -r requirements.txt || { echo "❌ Échec de l'installation des dépendances de XSStrike."; exit 1; }

echo "✅ XSStrike installé avec succès."
}


# Exécution des vérifications et installations

install_go
install_pip
install_pipx
install_subfinder
install_sublist3r
install_httpx
install_gobuster
install_gospider
install_katana
install_getjs
install_gau
install_waybackurls
install_linkfinder
install_arjun
install_uro
install_ffuf
install_jaeles
install_nuclei
install_dalfox
install_ssrfmap
install_smuggler
install_ssrfmap
install_openredirex
install_graphqlmap
install_headi
install_crlfuzz
install_injectus
install_corsy
install_xsrfprobe
install_fdsploit
install_tplmap
install_sstimap
install_xsstrike


echo "🎉 Tout est prêt !"

