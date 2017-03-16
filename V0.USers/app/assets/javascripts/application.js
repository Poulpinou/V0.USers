// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require ckeditor/init
//= require bootstrap-colorpicker
//= require_tree .


$('.colorpicker').colorpicker('show');
    $('.colorpicker').colorpicker().on('changeColor', function(ev){
  bodyStyle.backgroundColor = ev.color.toHex();
    });
  
  $(document).ready(function(){
  $('#preview').hide();
  $("#label_color").change(update);
  $("#label_name").keypress(update);
  });

  function update(){

  $('#preview').slideDown('slow');
  var name = $("#label_name").val();
  var color = $("#label_color").val();
  $('#Displayname').html(name);
  document.getElementById('color').style='background-color:'+color+';padding: 4px;border: 1px solid lightgrey;color: black;width: 80px;height: 30px;text-align: center;border-radius: 7px;';
  /*$('#color').html(color);*/
  }