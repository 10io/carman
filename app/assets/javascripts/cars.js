/* global $ */

// we're using Turbolinks: listen to ready but also page:load and page:partial-load
$(document).on('ready page:load page:partial-load', function () {
  $('[data-toggle="tooltip"]').tooltip();

  // remove options from an input type select
  function removeOptions (selector, options) {
    $.each(options, function (_, o) {
      $(selector).find('option[value=' + o + ']').remove();
    });
  }

  // add options from an input type select
  function addOptions (selector, options) {
    $.each(options, function (_, o) {
      $(selector).append(
        $('<option></option>').val(o).html(o)
      );
    });
  }

  // re organize the form when changing the car type
  $('#car_type').change(function () {
    switch ($(this)[0].value) {
      case 'sedan':
        removeOptions('#car_engine', ['electric']);
        removeOptions('#car_traction', ['4WD']);
        removeOptions('#car_head_lamp', ['xenon', 'led', 'laser']);
        $('#car_suv')[0].checked = false;
        $('#car_suv').closest('.checkbox').removeClass('hidden');
        $('#car_blind_spot_detection')[0].checked = false;
        $('#car_blind_spot_detection').closest('.checkbox').addClass('hidden');
        break;

      case 'luxury':
        addOptions('#car_engine', ['electric']);
        removeOptions('#car_traction', ['4WD']);
        addOptions('#car_head_lamp', ['xenon', 'led', 'laser']);
        $('#car_suv')[0].checked = false;
        $('#car_suv').closest('.checkbox').addClass('hidden');
        $('#car_blind_spot_detection')[0].checked = false;
        $('#car_blind_spot_detection').closest('.checkbox').removeClass('hidden');
        break;

      case 'offroad':
        removeOptions('#car_engine', ['electric']);
        addOptions('#car_traction', ['4WD']);
        removeOptions('#car_head_lamp', ['xenon', 'led', 'laser']);
        $('#car_suv')[0].checked = false;
        $('#car_suv').closest('.checkbox').addClass('hidden');
        $('#car_blind_spot_detection')[0].checked = false;
        $('#car_blind_spot_detection').closest('.checkbox').addClass('hidden');
        break;
    }
  });

  // re organize the form when changing the car engine type
  $('#car_engine').change(function () {
    switch ($(this)[0].value) {
      case 'petrol':
        $('#car_horsepower').closest('.form-group').removeClass('hidden');
        $('#car_mpg').closest('.form-group').removeClass('hidden');
        $('#car_range').closest('.form-group').addClass('hidden');
        break;

      case 'electric':
        $('#car_horsepower').closest('.form-group').addClass('hidden');
        $('#car_mpg').closest('.form-group').addClass('hidden');
        $('#car_range').closest('.form-group').removeClass('hidden');
        break;
    }
  });
});
