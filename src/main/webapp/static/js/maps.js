function initMap(latlng, zoom=13) {
    var mapDiv = document.getElementById('googleMaps');
    map = new google.maps.Map(mapDiv, {
        center: latlng,
        zoom: zoom
    });
}

function addMarker(latlng) {
    var marker = new google.maps.Marker({
        position: latlng,
        title: "Hello World!"
    });
    marker.setMap(map);
}