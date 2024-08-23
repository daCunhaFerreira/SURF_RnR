import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl' // Don't forget this!
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';


export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Object
  }

  connect() {

    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/guillaumeo8/cm040u6w900dx01qtdapja3jc"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    // this.map.addControl(
    //   new MapboxGeocoder({
    //     accessToken: mapboxgl.accessToken,
    //     mapboxgl: mapboxgl,
    //   })
    // );
  }


  #addMarkersToMap() {
    const customMarker = document.createElement('div');
    customMarker.style.backgroundColor = 'white';
    customMarker.style.borderRadius = '50%';
    customMarker.style.height = '32px';
    customMarker.style.width = '32px';
    customMarker.style.textAlign = "center";
    customMarker.innerHTML = this.markersValue.marker_html;

    new mapboxgl.Marker(customMarker)
      .setLngLat([ this.markersValue.lng, this.markersValue.lat ])
      .addTo(this.map)
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ this.markersValue.lng, this.markersValue.lat ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
