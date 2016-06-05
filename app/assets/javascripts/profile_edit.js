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

// Aplicando carga por defecto
/*$(document).on('page:load', function() {

    // Aplicando Evento Change a Ubigeo
    var dpto = $('select[name="profile[ub_department_id]"] option:selected').val();
    
    var prov = $('select[name="profile[ub_province_id]"]').data("id");
  
    var dist = $('select[name="profile[ub_district_id]"]').data("id");
    
    $("#profile_ub_province_id").empty();
    $("#profile_ub_district_id").empty();
    
    // Departamentos > Provincias
    $( document ).delegate( "#profile_ub_department_id", "change", function() {
        
        dpto = $(this).val();
        
        $.ajax('/provinces/'+dpto, {
             type: "get",
             dataType: "json",
             beforeSend: function(){
                $("#profile_ub_province_id").attr("disabled", "disabled");
                $("#profile_ub_province_id").empty();
                $('#profile_ub_province_id').append($('<option>', { 
                    value: '',
                    text : '-- Seleccione Provincia --'
                }));
             },
             success: function(response) {
                
                $("#profile_ub_province_id").removeAttr("disabled");
                
                $.each(response, function(i, item) {
                  
                  $('#profile_ub_province_id').append($('<option>', { 
                      value: item.id,
                      text : item.nom_prov
                  }));
                  
                  // La provincia anterior es igual al valor de la nueva lista
                  if(prov == item.id){
                    $('#profile_ub_province_id option[value='+prov+']').attr('selected','selected'); // Seleccionando valor por defecto
                    $('select[name="profile[ub_province_id]"]').trigger("change");                   // Cargando nuevamente el el selector 
                  }
                  
                });
                return false
  
             }
         });
    });
    
    // Provincias > Distrito
    $( document ).delegate( "#profile_ub_province_id", "change", function() {
        
        prov = $(this).val();
        
        $.ajax('/districts/'+dpto+'/'+prov, {
             type: "get",
             dataType: "json",
             beforeSend: function(){
                $("#profile_ub_district_id").attr("disabled", "disabled");
                $("#profile_ub_district_id").empty();
                $('#profile_ub_district_id').append($('<option>', { 
                    value: '',
                    text : '-- Seleccione Distrito --'
                }));
             },
             success: function(response) {
                $("#profile_ub_district_id").removeAttr("disabled");
                
                $.each(response, function(i, item) {
                  
                  $('#profile_ub_district_id').append($('<option>', { 
                      value: item.id,
                      text : item.nom_dist
                  }));
                  
                  // El distrito anterior es igual al valor de la nueva lista de distritos
                  if(dist == item.id){
                    $('#profile_ub_district_id option[value='+dist+']').attr('selected','selected');    
                  }
                  
                });
                return false
  
             }
          
         });
    });

    // Cargando por defecto el sistema de ubigeo
    $('select[name="profile[ub_department_id]"]').trigger("change");
});*/
    

    