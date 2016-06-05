# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


    dpto = $('#profile_ub_department_id option:selected').val();
    
    prov = $('select[name="profile[ub_province_id]"]').data("id");
  
    dist = $('select[name="profile[ub_district_id]"]').data("id");
    
    $( document ).delegate "#profile_ub_department_id", "change", ->
        console.log(prov)
        dpto = $(this).val()
        $.ajax '/provinces/'+dpto,
            type: 'GET'
            dataType: 'json'
            error: (jqXHR, textStatus, errorThrown) ->
                
            beforeSend: ->
                $("#profile_ub_province_id").attr("disabled", "disabled");
                $("#profile_ub_province_id").empty();
                $('#profile_ub_province_id').append($('<option>', { 
                    value: '',
                    text : '-- Seleccione Provincia --'
                }));
            success: (data, textStatus, jqXHR) ->
                console.log(data);
                $("#profile_ub_province_id").removeAttr("disabled");
                for item in data
                    #console.log(item)
     
                 $('#profile_ub_province_id').append($('<option>', { 
                      value: item.id,
                      text : item.nom_prov
                }));
                  
                  # La provincia anterior es igual al valor de la nueva lista
                 if prov == item.id 
                    $('#profile_ub_province_id option[value='+prov+']').attr('selected','selected'); #// Seleccionando valor por defecto
                    $('select[name="profile[ub_province_id]"]').trigger("change");                   #// Cargando nuevamente el el selector 
                 
                  
                
                
    #$( document ).delegate "#profile_ub_province_id", "change", ->
    #    console.log($(this).val());