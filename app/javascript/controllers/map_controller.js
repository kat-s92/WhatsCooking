import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {apiKey: String,
    markers: Array
  }

  connect(){
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
        container: this.element, // container ID
        style: 'mapbox://styles/mapbox/streets-v12',// style URL
        center: [13.3901527, 52.5105718],
        zoom: 4,
        // starting zoom
    });
    this.#addMarkersToMap()
  }

  #addMarkersToMap(){
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
      .setLngLat([marker.lon, marker.lat])
      .addTo(this.map);
    })
  }
}
