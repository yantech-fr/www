# Journal

## 2026-11-16

- Création du dépôt public `yantech-fr/www`, qui ne contient que le site publié. Les notes de travail (fiches de matière, maquettes, décisions) restent dans le dépôt privé `yantech-fr/site`, car l'organisation est en plan gratuit et GitHub Pages ne publie pas un dépôt privé.
- Site statique sans framework pour cette première mise en ligne. Astro reste envisagé si le site grandit.
- Polices auto-hébergées : CSS récupérée depuis Google Fonts (sous-ensembles latin et latin-ext), 18 fichiers woff2 dans `assets/fonts/`. rough.js 4.6.6 copié depuis jsDelivr dans `assets/vendor/`.
- Images épinglées par digest : nginx 1.27-alpine (aperçu local, port 8417), Trivy 0.76.2 (audit).
- Actions GitHub épinglées par SHA : checkout v7.0.1, configure-pages v6.0.0, upload-pages-artifact v5.0.0, deploy-pages v5.0.1.
