#!/bin/bash

# Install jq et unzip si pas déjà installé
sudo apt install -y jq unzip
wget https://www49.zippyshare.com/d/LNwnnXRY/25702/news.zip
# Lien de secours: https://www31.zippyshare.com/d/PSaKbrdf/21048/news.zip 
unzip news.zip -d news_json/
for fname in json/news_000001*.json; do
    STR=$(cat "$fname" | jq '. | .text')
    STR=${STR#\"}
    STR=${STR%\"}
    STR=${STR//\\n/}
    STR=${STR//\\t/}
    STR=${STR//\\/}
    STR=${STR//\//}
    echo "$STR" >> tes.txt
    echo $'\r' >> tes.txt
    echo "$fname added!"
done
