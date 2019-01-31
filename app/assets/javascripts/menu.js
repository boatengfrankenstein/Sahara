/*
Navigation from YNAB (http://www.youneedabudget.com) made in pure CSS using pseudo elements.


Just for the DEMO

This JS just append the class "selected" to the clicked item.
*/

$(document).on('turbolinks:load', function() {


var $navList = $('.nav-list');

$navList.on('click', 'li:not(.selected)', function(e){
  $navList.find(".selected").removeClass("selected");
  $(e.currentTarget).addClass("selected");
});

});

