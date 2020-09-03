// app/javascript/plugins/init_mapbox.js
import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  if (markers.length === 0) return
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 20, maxZoom: 10, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    if (markers.length != 0) {
      markers.forEach((marker) => {
        const mapboxMarker = new mapboxgl.Marker({ color: '#D85040', className: 'mapboxMarker'})
          .setLngLat([ marker.lng, marker.lat ])
          .addTo(map);

        mapboxMarker.getElement().addEventListener('click', () => {
          // 1. Aller chercher la div qui correspond au marker


          // Hide all surf school cards
          document.querySelectorAll('.surf-school-card').forEach((card) => {
            card.style.display = 'none'
          });

          // Show specific surf school card
          document.querySelector(`#surf-school-${marker.id}`).style.display = 'block';
        });
      });
    };

    const marker_spot = JSON.parse(mapElement.dataset.spot);

    new mapboxgl.Marker({ color: '#153351' })
      .setLngLat([ marker_spot.lng, marker_spot.lat ])
      .addTo(map);

    fitMapToMarkers(map, markers);
  };
}

export { initMapbox };
