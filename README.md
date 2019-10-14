# [GPT-2](https://gpt2.williamjacques.fr/) :fr:

Modèle [GPT-2](https://github.com/openai/gpt-2) d'OpenAI entraîné sur quatres différents jeux de données en français:

- Livres en français
- Scripts de films français
- Compte-rendus des débats parlementaires
- Tweet en français ?

permettant de faire de la génération de texte.


**Une démo utilisant pour chaque jeu de données un modèle GPT-2 Small (124M) est disponible à l'adresse suivante: https://github.com/openai/gpt-2**


## Usage

Cloner ce repo
```bash
git clone https://github.com/aquadzn/gpt2-french.git
```

Tensorflow et gpt-2-simple sont necéssaires afin de fine-tuner GPT-2. Créer un environnement puis installer les deux packages ```pip install tensorflow==1.14 gpt-2-simple```.

Un script et un notebook sont disponibles dans le dossier [src](https://github.com/aquadzn/gpt2-french/tree/master/src) afin de fine-tuner GPT-2 sur vos propres datasets. 
L'output de chaque entraînement, c'est à dire le dossier ```checkpoint/```, est à mettre dans ```gpt2-models/votre_dossier```

Vous pouvez modifier le script ```deploy_cloudrun.sh``` en changeant les variables afin de déployer tous vos différents modèles (dossier dans gpt2-models) d'un coup en le lanceant avec ```bash deploy_cloudrun.sh```


## Crédits
Basé sur les repos [GPT2-Simple](https://github.com/minimaxir/gpt-2-simple) et [GPT2-CloudRun](https://github.com/minimaxir/gpt-2-cloud-run) de [minimaxir](https://github.com/minimaxir)



## Licence
MIT


>Normalement j'ai déjà 3 modèles fine-tunés (Script de films, romans, débats), idée pour un 4e ? Tweets https://github.com/twintproject/twint ? ou bien essayez de faire passer wikipedia REDAC sur transformers car trop lourd pour gpt2-simple!
