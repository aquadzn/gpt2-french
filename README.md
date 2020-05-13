# Edit Mai 2020

Ce repo est un peu en désordre et mal expliqué sur certains points.

Ayant accès au Tensorflow Research Cloud Program, je compte peut être entraîner from scratch (et non fine-tuner comme il est question ici) sur un gros dataset en français.
Si cela abouti, j'archiverai ce qui est ici actuellement et j'écrirai une meilleure doc 👍


# [GPT-2](https://gpt2.williamjacques.fr/) :fr:

Modèle [GPT-2](https://github.com/openai/gpt-2) d'OpenAI entraîné sur quatres différents jeux de données en français:

- Livres en français
- Scripts de films français
- Compte-rendus des débats parlementaires
- Tweet d'Emmanuel Macron

permettant de faire de la génération de texte.


**Une démo utilisant pour chaque jeu de données un modèle GPT-2 Small (124M) est disponible à l'adresse suivante: https://gpt2.williamjacques.fr** (service down)


## Usage

Cloner ce repo
```bash
git clone https://github.com/aquadzn/gpt2-french.git
```

Tensorflow et gpt-2-simple sont necéssaires afin de fine-tuner GPT-2. Créer un environnement puis installer les deux packages ```pip install tensorflow==1.14 gpt-2-simple```.

Un script et un notebook sont disponibles dans le dossier [src](https://github.com/aquadzn/gpt2-french/tree/master/src) afin de fine-tuner GPT-2 sur vos propres datasets. 
L'output de chaque entraînement, c'est à dire le dossier ```checkpoint/run1```, est à mettre dans ```gpt2-model/model1 model2 model3 etc...```

![image](https://github.com/aquadzn/gpt2-french/blob/master/src/Screenshot%20from%202019-10-15%2017-00-57.png)

Vous pouvez lancer le script ```deploy_cloudrun.sh``` afin de déployer tous vos différents modèles (dans gpt2-model) d'un coup. Il faut cependant avoir déjà initialisé l'outil CLI gcloud (Cloud SDK).


## Modèles
[Releases](https://github.com/aquadzn/gpt2-french/releases/)


## Crédits
Basé sur les repos [GPT2-Simple](https://github.com/minimaxir/gpt-2-simple) et [GPT2-CloudRun](https://github.com/minimaxir/gpt-2-cloud-run) de [minimaxir](https://github.com/minimaxir)


## Licence
[MIT](https://github.com/aquadzn/gpt2-french/blob/master/LICENSE)
