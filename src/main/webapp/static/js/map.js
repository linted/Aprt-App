var initMap = function (elementId, latlng, zoom) {
    var mapDiv = document.getElementById(elementId);
    map = new google.maps.Map(mapDiv, {
        center: latlng,
        zoom: zoom
    });

}

function addMarker(latlng) {
    if (latlng.lat && latlng.lng) {
        var marker = new google.maps.Marker({
            position: latlng,
            title: "Hello World!"
        });
        marker.setMap(map);
    }
}