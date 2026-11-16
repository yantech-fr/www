# yantech.fr

Le site de Yannick Gardiol, architecte et développeur IA : https://www.yantech.fr

Trois pages statiques : le carnet (`index.html`), l'atelier et les missions, plus les mentions légales. Polices et scripts sont hébergés dans `assets/`.

Mesure d'audience : Matomo Cloud (site n° 5), traceur classique dans `assets/stats.js`, sans cookie, « Do Not Track » respecté, refus possible depuis les mentions légales. Seules les visites partent vers Matomo.

## Travailler en local

Seule dépendance : Docker.

```sh
make up      # http://localhost:8417
make down
make audit   # scan Trivy (secrets, configuration)
```

## Publication

Chaque push sur `main` publie le site sur GitHub Pages (`.github/workflows/pages.yml`, actions épinglées par SHA). Domaine : `www.yantech.fr` (fichier `CNAME`).
