import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const marker = JSON.parse(mapElement.dataset.marker);
  map.addMarker(marker);
  if (!marker) {
    map.setZoom(2);
  } else {
    map.setCenter(marker.lat, marker.lng);
    map.setZoom(14);
  }
}

const indexMapElement = document.getElementById('index-map');
if (indexMapElement) { // don't try to build a map if there's no div#map to inject in
  const indexMap = new GMaps({ el: '#index-map', lat: 0, lng: 0 });
  const markers = JSON.parse(indexMapElement.dataset.markers);
  indexMap.addMarkers(markers);

  if (markers.length === 0) {
    indexMap.setZoom(2);

  } else if (markers.length === 1) {
    indexMap.setCenter(markers[0].lat, markers[0].lng);
    indexMap.setZoom(14);

  } else {
    indexMap.fitLatLngBounds(markers);
  }
}
