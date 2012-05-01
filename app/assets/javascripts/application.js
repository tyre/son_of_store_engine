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
//= require_tree .
//= require bootstrap
//$(document).ready( function(){
  //$.getJSON("navbar/contents", function(data){
    //$("span#comment_count").text(data['count']);
    //$("li#first_comment").append(" by " + data['first']['author_name'])  
  //});
//});
//
//
//<li><a href="/signin">Sign in</a></li>
//<li><a href="/signup">Register</a></li>
//$.getJSON("navbar/contents");


//$(document).ready( function(){
  //$.get("navbar/contents", function(data){
    //$('ul.nav-bar').append("<li id='cart-menu'><a href=" + data['cart_path'] + "><i class='icon-shopping-cart icon-white'></i>&nbsp;&nbsp;Cart " + data['cart_count'] + "</a>");
  //});
//});



$(document).ready( function(){
  $.get("navbar/contents", function(data){
    //alert(data);
    $('ul#nav_bar').append(data)});
});
