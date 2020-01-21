const number_to_day = {
  0: "Segunda",
  1: "Terca",
  2: "Quarta",
  3: "Quinta",
  4: "Sexta"
}

$(document).ready(function(){
  $('#exampleModal').on('show.bs.modal', function (event) {

    var trigger = $(event.relatedTarget)
    hour = trigger.data('hour')
    day = trigger.data('day')

    var modal = $(this)
    modal.attr('data-hour', hour)
    modal.data('hour', hour)
    modal.attr('data-day', day)
    modal.data('day', day)
    modal.find('.modal-title').text(hour + ":00 - " + number_to_day[day])
  })

  $("#create-reservation").click(function(event){
    hour = $('.modal').data('hour')
    day = $('.modal').data('day')

    $.post("/reservations", {reservation: {hour: 2, day: 3}}, function( data ) {
      console.log(data);
    });
  });
})
