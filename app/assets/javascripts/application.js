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
//= require tether
//= require rails-ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap/modal
//= require_tree .

function update_progress(image) {
    let sprint = 1;
    const alt = image.alt;
    const task_id = JSON.stringify($(image).parent().parent().attr('id'));
    let parameter = JSON.stringify(alt[0]);
    let mode = document.location.href.split("/")[3];
    if(mode == "sprint"){
        sprint = parseInt(document.location.href.split("/")[4]);
    }
    $.ajax({
        url: "/update_progress",
        data: {state: parameter, task_id: task_id, sprint: sprint},
        contentType: 'json'
    }).done(
        function () {
            $('#table_body').load('/update_tasks_view/' + sprint);
        }
    );
}

function change_sprint_to(value) {
    let bar = document.location.href.split("/");
    bar[4] = value;
    let str = bar.join("/");
    document.location.href = str;
    $.ajax({
        url: "/",
        data: {id: value},
        contentType: 'json'
    }).done(
        function () {
            $('#table_body').load('/update_tasks_view/'+value);
        }
    );
}