// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

  $('.datepicker').datepicker({
    numberOfMonths: 3,
    showButtonPanel: true
  });
  
  $('#calendar').fullCalendar({
    events: window.events
  });
  
});