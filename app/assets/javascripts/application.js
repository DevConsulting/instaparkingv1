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

$(document).ready(function() {
  
    // Aplicando Evento Change a Ubigeo
    var dpto = $('select[name="profile[ub_department_id]"] option:selected').val();
    
    var prov = $('select[name="profile[ub_province_id]"] option:selected').val();
    
    var dist = $('select[name="profile[ub_district_id]"] option:selected').val();
    
    // Departamentos > Provincias
    $( document ).delegate( "#profile_ub_department_id", "change", function() {
        dpto = $(this).val();
        
        console.log("load departamentos");
        
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
                  
                  console.log("si la provincia coincide?");
                  if(prov == item.id){
                    console.log("Si");
                    $('#profile_ub_province_id option[value='+prov+']').attr('selected','selected');    
                  }
                  
                });
  
             }
         });
    });
    
    // Provincias > Distrito
    $( document ).delegate( "#profile_ub_province_id", "change", function() {
        prov = $(this).val();
        console.log(dpto);
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
                  
                  console.log("el distrito coincide?");
                  if(dist == item.id){
                    console.log("Si");
                    $('#profile_ub_district_id option[value='+dist+']').attr('selected','selected');    
                  }
                  
                });
  
             },
          
         });
    });
    

    
    // Aplicando carga por defecto
    $('select[name="profile[ub_department_id]"]').trigger("change");
    
    $('select[name="profile[ub_province_id]"]').trigger("change");
    
    
});