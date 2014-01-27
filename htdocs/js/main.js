$(document).ready(function(){
    $("#map").css("height",GetHeight()+"px");
    var map = L.map('map').setView([51.505, -0.09], 13);
    L.tileLayer('http://{s}.tile.cloudmade.com/8ee2a50541944fb9bcedded5165f09d9/997/256/{z}/{x}/{y}.png', {
            maxZoom: 18,
            attribution: ''
    }).addTo(map);
});
function GetHeight() {
    return $(window).height();
}