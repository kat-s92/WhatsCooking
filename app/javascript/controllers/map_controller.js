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
        zoom: 14,
        // starting zoom
    });
    this.#addMarkersToMap()
  }

  #addMarkersToMap(){
    this.markersValue.forEach((marker) => {
      const shop_info = new mapboxgl.Popup().setHTML(marker.shop_info)
      const customMarker = document.createElement("div")
      customMarker.className = 'marker'
      customMarker.style.backgroundImage = `url('${marker.marker_img}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "40px"
      customMarker.style.height = "40px"

      new mapboxgl.Marker(customMarker)
      .setLngLat([marker.lon, marker.lat])
      .addTo(this.map)
      .setPopup(shop_info)
    })
  }
}
