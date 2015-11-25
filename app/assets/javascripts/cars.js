/* global $ */

// we're using Turbolinks: listen to ready but also page:load and page:partial-load
$(document).on('ready page:load page:partial-load', function () {
  $('[data-toggle="tooltip"]').tooltip();

  $('[data-form-update-url]').change(function () {
    var url = $(this).data('form-update-url');
    $(this.form).attr('action', url).submit();
  });
});
