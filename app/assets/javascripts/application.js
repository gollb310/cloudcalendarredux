// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require rails-ujs
//= require turbolinks
//= require_tree .

//= require moment 
//= require fullcalendar


let newevent = [];
let eventsarray = [];
let formattedEventData = [];

function getVals(titles, desc, starts, ends){
    console.log(titles.toString());
    $.each(titles, function (index, value){


        newevent.push = titles[index],
        newevent.push = desc[index],
        newevent.push = starts[index],
        newevent.push = ends[index],
        eventsarray.push(newevent)
    });



    for (var k = 0; k < eventsArray.length; k++) {
        formattedEventData.push({
            title: eventsArray[k][0],
            description: eventsArray[k][1],
            start: eventsarray[k][2],
            end: eventsarray[k][3]
        });
    }
}

$(document).ready(function() {
    $('#calendar').fullCalendar({


        timezone: 'local',

        header: {
            left: 'title',
            center: '',
            right: 'today prev,next'
        },

        eventSources: [{url: '/public/events.json'}]


    });

});
