// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

  $('.datepicker').datepicker({
    numberOfMonths: 1,
    showButtonPanel: true
  });
  console.log(window.events[0]);
  // window.events[0].append["textColor:'#ff0000'"]
  // console.log(window.events[0]);
  $('#calendar').fullCalendar({
    events: window.events
  });
  
});