// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

// SIstema de Ubigeo


var dpto = ''; prov = ''; dist = '';


$(document).on('page:change', function() {
    
    $('#profile_ub_department_id option[value=1]').attr('selected','selected');
    
    dpto = $('#profile_ub_department_id option:selected').val();
    
    prov = $('select[name="profile[ub_province_id]"]').data("id");
  
    dist = $('select[name="profile[ub_district_id]"]').data("id");
    
    // Por defecto aplicando un Change
    $('select[name="profile[ub_department_id]"]').trigger("change");
    
   
});
