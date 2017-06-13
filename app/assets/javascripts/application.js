//= require jquery
//= require jquery_ujs
//= require materialize
//= require materialize-sprockets
//= require materialize-form
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
  $(".button-collapse").sideNav();
})