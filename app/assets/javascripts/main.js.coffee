# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


# Only markers in view
#https://www.mapbox.com/mapbox.js/example/v1.0.0/listing-markers/
# markers at certain zoom
#https://www.mapbox.com/mapbox.js/example/v1.0.0/markers-only-at-zoom-level/

#SOLUTION
#https://www.mapbox.com/guides/an-open-platform/


$(document).ready ->


  # Provide your access token
  L.mapbox.accessToken = 'pk.eyJ1IjoiY2hyaXN0aWFuY2xvdWdoIiwiYSI6IkR6ZDZ1TFEifQ.i_3w7Q8o7bpB9YJhflFZ7g';

  # # Draw map
  # window.map = L.mapbox.map("main_index_map", "christianclough.ncei2jcg")

  # # Start at current_user, zoomed
  # lat_start = 51.5072
  # lng_start = 0.1275 #parseFloat(map_index_map_lng_start)

  # # Offset slightly and then pan to, to impress
  # window.map.setMaxBounds([[-86, -220], [86, 220]], {animate:false}).setView([lat_start-0.005, lng_start+0.03], 10)
  # #window.map.panTo new L.LatLng(lat_start, lng_start)


  # # The visible tile layer
  # L.mapbox.tileLayer('examples.map-8ced9urs').addTo map
  # # Load interactivity data into the map with a gridLayer
  # myGridLayer = L.mapbox.gridLayer('examples.map-8ced9urs').addTo(map)
  # # And use that interactivity to drive a control the user can see.
  # myGridControl = L.mapbox.gridControl(myGridLayer).addTo(map)
  # # Finally, center the map.
  # map.setView [
  #   37
  #   -80
  # ], 3





  # mapid = 'christianclough.ndc36ib8'
  # mapid = 'examples.map-8ced9urs'

  infoElm = document.querySelector('.building-info')


  # map = L.mapbox.map("main_index_map", mapid,
  #   gridControl: false
  #   gridLayer: true
  #   zoomControl: true).setView([
  #   39.50
  #   -98.35
  # ], 4)

  map = L.mapbox.map('main_index_map', undefined, gridControl: true).setView([
    40.85
    -75.94
  ], 3)


  #gridLayer = L.mapbox.gridLayer('christianclough.ndc36ib8')
  map.addLayer L.mapbox.tileLayer('christianclough.ndc36ib8')
  #map.addLayer gridLayer

  # #map.attributionControl.addAttribution 'Source: GADM.org'
  # dataLayer = L.mapbox.gridLayer(mapid).addTo(map)

  # Load interactivity data into the map with a gridLayer
  myGridLayer = L.mapbox.gridLayer('christianclough.ndc36ib8').addTo(map)

  # And use that interactivity to drive a control the user can see.
  # myGridControl = L.mapbox.gridControl(myGridLayer).addTo(map);


  # # EXPLORE THIS TOMORROW: https://www.mapbox.com/mapbox.js/example/v1.0.0/interactivity-outside-map-layer/
  # map.gridLayer.on 'click', (e) ->
  #   alert "hello"
  #   # if e.data and e.data.url
  #   #   window.open e.data.url
  #   # return


  myGridLayer.on('mousemove', (o) ->
    if o.data and o.data.name
      infoElm.innerHTML = '<strong>' + o.data.name + '</strong>'
    else
      infoElm.innerHTML = ''
    return
  ).on 'mouseout', (o) ->
    infoElm.innerHTML = ''
    return


  # dataLayer.on 'mouseover', (evt) ->
  #   alert "hello"    
  #   # if typeof evt.data == 'undefined'
  #   #   return infoElm.innerHTML = ''
  #   # infoElm.innerHTML = 'floors: 1'# + evt.data.floors



  #GridControl = L.mapbox.gridControl(dataLayer).addTo(map)




  # omnivore.csv('/cities.csv').addTo(window.map);

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

