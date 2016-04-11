var initMap = function (elementId, latlng, zoom) {
    var mapDiv = document.getElementById(elementId);
    var map = new google.maps.Map(mapDiv, {
        center: latlng,
        zoom: zoom
    }, noClear: false, mapTypeId: google.maps.MapTypeId.ROADMAP, streetViewControl: false);
    return map;
}

function addMarker(latlng, map) {
    if (latlng.lat && latlng.lng) {
        var marker = new google.maps.Marker({
            position: latlng,
            title: "Hello World!"
        });
        marker.setMap(map);
    }
}