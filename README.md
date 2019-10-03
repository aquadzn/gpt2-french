# GPT-2 French demo | Démo française de GPT-2


## A faire


#### Dataset:
- [x] Collectez dataset articles journaux
- [x] Collectez dataset livres (Lovecraft, Hugo, Verne, Orwell?)
- [x] Collectez dataset poèmes (https://archive.org/details/booksbylanguage_french?and%5B%5D=victor+hugo&sin=)
- [ ] Collectez dataset script de film (http://lecteursanonymes.org/scenario/, https://www.cinematheque.fr/cineweb/recherche.html?s=scenario)
- [ ] Essayez de passer chaque dataset sous .txt et sous .csv pour voir possible différence?


#### Fine-tuning:
- [x] Fine-tunez GPT-2 medium avec [GPT-2 Simple](https://github.com/minimaxir/gpt-2-simple/) sur des livres et poèmes français
- [x] Générez du texte à partir du modèle fine-tunez (résultats à améliorer :poop:)
- [ ] Fine-tunez GPT-2 medium avec la lib transformers d'Huggingface (https://huggingface.co/transformers/examples.html)
- [ ] Fine-tunez GPT-2 avec le repo gpt2-simple (Github)
- [ ] Réalisez 3 types de générations différents (dont 5 artistes plus connus ou tout concat?)


#### Déploiement:
- [ ] Faire une homepage basique flat avec un peu de JS :poop:
- [ ] Déployez les différents modèles pré-entraînés sur des conteneurs avec Flask tournant sur Cloud Run (liés entre eux via Kubernetes? https://github.com/minimaxir/gpt-2-cloud-run)
- [ ] Script tournant H24 sur une instance f1-micro qui permet de shutdown tout cas de facturation excessive


Article et repo à utiliser: 

* https://medium.com/datadriveninvestor/deploy-machine-learning-model-in-google-cloud-using-cloud-run-6ced8ba52aac
* https://github.com/NaxAlpha/gpt-2xy
* https://github.com/minimaxir/gpt-2-simple
* https://github.com/minimaxir/gpt-2-cloud-run
