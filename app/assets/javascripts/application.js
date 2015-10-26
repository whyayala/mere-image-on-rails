// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require chosen-jquery
//= require jquery.slick
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });
//for comaptibility with regular page loads and turbolinks
var ready = function() {
  $('.slider').slick({
    autoplay: true,
    autoplaySpeed: 2000,
    arrows: false,
    //setting-name: setting-value
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
