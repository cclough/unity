
$(document).ready ->


  # Provide your access token
  L.mapbox.accessToken = 'pk.eyJ1IjoiY2hyaXN0aWFuY2xvdWdoIiwiYSI6IkR6ZDZ1TFEifQ.i_3w7Q8o7bpB9YJhflFZ7g';

  # mapid = 'christianclough.ndc8kg1c'
  # mapid = 'examples.map-8ced9urs'

  infoElm = document.querySelector('.building-info')


  map = L.mapbox.map('main_index_map', undefined, gridControl: true).setView([
    40.85
    -75.94
  ], 3)


  map.addLayer L.mapbox.tileLayer('christianclough.ndc8kg1c')


  # Load interactivity data into the map with a gridLayer
  myGridLayer = L.mapbox.gridLayer('christianclough.ndc8kg1c').addTo(map)

  # And use that interactivity to drive a control the user can see.
  # myGridControl = L.mapbox.gridControl(myGridLayer).addTo(map);


  myGridLayer.on('mousemove', (o) ->
    if o.data and o.data.geo_id
      # infoElm.innerHTML = '<strong>' + o.data.name + '</strong>'
      $.get "/places/" + o.data.geo_id, (data) ->
        $(".building-info").html data
    # else
    #   infoElm.innerHTML = ''
    return
  )#.on 'mouseout', (o) ->
    # infoElm.innerHTML = ''
    # return




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

