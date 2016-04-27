var initMap = function (elementId, latlng, zoom) {
    var mapDiv = document.getElementById(elementId);
    var map = new google.maps.Map(mapDiv, {
        center: latlng,
        zoom: zoom,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        disableDefaultUI: true
    });
    google.maps.event.trigger(map, 'resize');
    return map;
}

function addMarker(latlng, map, id = undefined, headline = undefined) {
    console.log("Adding marker");
    if (latlng.lat && latlng.lng) {
        var marker = new google.maps.Marker({
            position: latlng,
            title: headline,
            animation: google.maps.Animation.DROP,
            keyId: id
        });
        marker.setMap(map);
        return marker;
    }
}

function markerClick(id) {
    //window.location.assign("#/properties/" + id);
}

