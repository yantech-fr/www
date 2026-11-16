# yantech.fr

Le site de Yannick Gardiol, architecte et développeur IA : https://www.yantech.fr

Trois pages statiques : le carnet (`index.html`), l'atelier et les missions, plus les mentions légales. Polices et scripts sont hébergés dans `assets/`, aucune ressource n'est chargée depuis un service tiers.

## Travailler en local

Seule dépendance : Docker.

```sh
make up      # http://localhost:8417
make down
make audit   # scan Trivy (secrets, configuration)
```

## Publication

Chaque push sur `main` publie le site sur GitHub Pages (`.github/workflows/pages.yml`, actions épinglées par SHA). Domaine : `www.yantech.fr` (fichier `CNAME`).
