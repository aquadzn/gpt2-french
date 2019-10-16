# [GPT-2](https://gpt2.williamjacques.fr/) :fr:

Modèle [GPT-2](https://github.com/openai/gpt-2) d'OpenAI entraîné sur quatres différents jeux de données en français:

- Livres en français
- Scripts de films français
- Compte-rendus des débats parlementaires
- Tweet d'Emmanuel Macron

permettant de faire de la génération de texte.


**Une démo utilisant pour chaque jeu de données un modèle GPT-2 Small (124M) est disponible à l'adresse suivante: https://gpt2.williamjacques.fr**


## Usage

Cloner ce repo
```bash
git clone https://github.com/aquadzn/gpt2-french.git
```

Tensorflow et gpt-2-simple sont necéssaires afin de fine-tuner GPT-2. Créer un environnement puis installer les deux packages ```pip install tensorflow==1.14 gpt-2-simple```.

Un script et un notebook sont disponibles dans le dossier [src](https://github.com/aquadzn/gpt2-french/tree/master/src) afin de fine-tuner GPT-2 sur vos propres datasets. 
L'output de chaque entraînement, c'est à dire le dossier ```checkpoint/```, est à mettre dans ```gpt2-models/votre_dossier```

![image](https://github.com/aquadzn/gpt2-french/blob/master/src/Screenshot%20from%202019-10-15%2017-00-57.png)

Vous pouvez modifier le script ```deploy_cloudrun.sh``` en changeant les variables afin de déployer tous vos différents modèles (dossier dans gpt2-models) d'un coup en le lanceant avec ```bash deploy_cloudrun.sh```


## Modèles
[Release v1.0](https://github.com/aquadzn/gpt2-french/releases/tag/v1.0)


## Crédits
Basé sur les repos [GPT2-Simple](https://github.com/minimaxir/gpt-2-simple) et [GPT2-CloudRun](https://github.com/minimaxir/gpt-2-cloud-run) de [minimaxir](https://github.com/minimaxir)



## Licence
[MIT](https://github.com/aquadzn/gpt2-french/blob/master/LICENSE)
