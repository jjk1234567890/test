<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
	<link href='${pageContext.request.contextPath}/resources/fullcalendar-5.11.0/lib/main.css' rel='stylesheet' />
	<script src='${pageContext.request.contextPath}/resources/fullcalendar-5.11.0/lib/main.js'></script>
	<script type='text/javascript'>

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new FullCalendar.Calendar(calendarEl, {
	  dayMaxEventRows: true, // for all non-TimeGrid views
	  views: {
	  timeGrid: {
	  dayMaxEventRows: 6 // adjust to 6 only for timeGridWeek/timeGridDay
	  }
	  },
	googleCalendarApiKey: 'AIzaSyBG2vEOaXbgLuqSh0-S-Wj1ATCpuoJMZus',
    eventSources: [
    {
          googleCalendarId:'jht00725@gmail.com',
          className:'렛츠업 스튜디오1'
          ,backgroundColor:'#be5683'//rgb,#ffffff 등의 형식으로 할 수 있어요.
        },
      {
          googleCalendarId:'letsupstudio@gmail.com',
          className:'렛츠업 스튜디오2'
          ,backgroundColor:'#FFE400'
        }/*,
      {
          googleCalendarId:'jht00725@gmail.com',
          className:'렛츠업 스튜디오',
            color: '#3b6978',
            //textColor: 'black' 
        }*/
    ]
  });
  calendar.render();
});
</script>
<style>
#calendar{
   width:60%;
   margin:20px auto;
}
</style>
  </head>
  <body>
    <div id='calendar'></div>
  </body>
</html>