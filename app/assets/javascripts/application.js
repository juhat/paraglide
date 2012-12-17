// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-transition
//= require bootstrap-modal
//= require bootstrap-dropdown
//= require bootstrap-scrollspy
//= require bootstrap-tab
//= require bootstrap-tooltip
//= require bootstrap-popover
//= require bootstrap-alert
//= require bootstrap-button
//= require bootstrap-collapse
//= require bootstrap-carousel
//= require bootstrap-typeahead
//= require_tree .
//= require_self

$(function() {
    $('.new-point-field-button').live('click', function(){
        $('.new-point-field:hidden').first().show();
    });
/*
    if (navigator.geolocation && get_current_location)
    {
        navigator.geolocation.getCurrentPosition( function(location)
        {
            window.location.replace( window.location.href + '/?latitude=' + location.coords.latitude + '&longitude=' + location.coords.longitude);
            console.log(window.location, location.coords.latitude, location.coords.longitude, $.cookie("latitude"), $.cookie("longitude"));
        });
    }
 */
});
