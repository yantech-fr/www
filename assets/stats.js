/* Mesure d'audience Matomo : sans cookie, sans carte de chaleur ni enregistrement de session, respecte « Do Not Track », désactivable sur la page des mentions légales. */
(function () {
  try { if (localStorage.getItem('yantech-sans-mesure') === '1') return; } catch (e) {}
  var _paq = window._paq = window._paq || [];
  _paq.push(['HeatmapSessionRecording::disable']);
  _paq.push(['disableCookies']);
  _paq.push(['setDoNotTrack', true]);
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  var u = 'https://scratchanalyse.matomo.cloud/';
  _paq.push(['setTrackerUrl', u + 'matomo.php']);
  _paq.push(['setSiteId', '5']);
  var g = document.createElement('script');
  g.async = true; g.src = 'assets/vendor/matomo.js';
  document.head.appendChild(g);
})();
