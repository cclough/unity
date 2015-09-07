# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/





$(document).ready ->


  # Provide your access token
  L.mapbox.accessToken = 'pk.eyJ1IjoiY2hyaXN0aWFuY2xvdWdoIiwiYSI6IkR6ZDZ1TFEifQ.i_3w7Q8o7bpB9YJhflFZ7g';

  # Draw map
  window.map = L.mapbox.map("main_index_map", "christianclough.ncei2jcg")

  # Start at current_user, zoomed
  lat_start = 51.5072
  lng_start = 0.1275 #parseFloat(map_index_map_lng_start)

  # Offset slightly and then pan to, to impress
  window.map.setMaxBounds([[-86, -220], [86, 220]], {animate:false}).setView([lat_start-0.005, lng_start+0.03], 10)
  #window.map.panTo new L.LatLng(lat_start, lng_start)

  omnivore.csv('/cities.csv').addTo(window.map);

  # ###### DRAW SELF MARKER
  # markerLayer_user = L.mapbox.markerLayer()

  # geoJson = [
  #   type: "Feature"
  #   geometry:
  #     type: "Point"
  #     coordinates: [lng_start, lat_start]
  #   properties:
  #     icon:
  #       iconUrl: "/assets/markers/user_location.png"
  #       iconSize: [30, 30] # size of the icon
  #       iconAnchor: [15, 15] # point of the icon which will correspond to marker's location
  #       popupAnchor: [0, -25] # point from which the popup should open relative to the iconAnchor
  # ]
  # markerLayer_user.on 'layeradd', (e) ->
  #   marker = e.layer
  #   feature = marker.feature
  #   marker.setIcon L.icon(feature.properties.icon)
  # markerLayer_user.addTo map
  # markerLayer_user.setGeoJSON geoJson

