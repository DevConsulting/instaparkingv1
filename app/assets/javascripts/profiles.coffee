# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Aplicando Script al Sistema de Ubigeo

# Departamentos > Provincias
$( document ).delegate "#profile_ub_department_id", "change", ->
    
    $.ajax '/provinces/'+dpto,
        type: 'GET'
        dataType: 'json'
        error: (jqXHR, textStatus, errorThrown) ->
            
        beforeSend: ->
            $("#profile_ub_province_id").attr("disabled", "disabled")
            $("#profile_ub_province_id").empty()
            $('#profile_ub_province_id').append($('<option>', { 
                value: '',
                text : '-- Seleccione Provincia --'
            }))
        success: (data, textStatus, jqXHR) ->
            $("#profile_ub_province_id").removeAttr("disabled")
            for item in data
                
                $('#profile_ub_province_id').append($('<option>', { 
                      value: item.id,
                      text : item.nom_prov
                }))
              
                # La provincia anterior es igual al valor de la nueva lista
                if prov == item.id 
                    $('#profile_ub_province_id option[value='+prov+']').attr('selected','selected') #// Seleccionando valor por defecto
                    $('select[name="profile[ub_province_id]"]').trigger("change")                   #// Cargando nuevamente el el selector 
             
# Provincias > Distrito
$( document ).delegate "#profile_ub_province_id", "change", ->
    
    prov = $(this).val()
    
    $.ajax '/districts/'+dpto+'/'+prov,
        type: 'GET'
        dataType: 'json'
        error: (jqXHR, textStatus, errorThrown) ->
            
        beforeSend: ->
            $("#profile_ub_district_id").attr("disabled", "disabled")
            $("#profile_ub_district_id").empty()
            $('#profile_ub_district_id').append($('<option>', { 
                value: '',
                text : '-- Seleccione Distrito --'
            }))
        success: (data, textStatus, jqXHR) ->
            $("#profile_ub_district_id").removeAttr("disabled")
            for item in data
                
                $('#profile_ub_district_id').append($('<option>', { 
                      value: item.id,
                      text : item.nom_dist
                }))
              
                # La provincia anterior es igual al valor de la nueva lista
                if dist == item.id 
                    $('#profile_ub_district_id option[value='+dist+']').attr('selected','selected') #// Seleccionando valor por defecto
                    $('select[name="profile[ub_district_id]"]').trigger("change")                   #// Cargando nuevamente el el selector



phone_id = ''; profile_id = '';

# Crud Telefono - Edit
$(document).delegate ".edit", "click", (event) ->
    
    event.preventDefault()
    
    # Variable
    phone_id = $(this).data("id")
    
    
    # Set Inputs
    $("#num_telefono").val($(this).attr("data-num"))
    $('#phone_type_id option[value='+$(this).attr("data-type")+']').attr('selected','selected')
    
    # Modal
    $('#myModal').modal 'show'

# Crud Telefono - Delete    
$(document).delegate ".remove", "click", (event) ->
    
    event.preventDefault()
    
    # Variable
    phone_id = $(this).data("id")
    
    $.ajax '/profile_phones/'+phone_id,
        type: 'DELETE'
        dataType: 'json'
        data: { 
            _method:'DELETE'
        }
        error: (jqXHR, textStatus, errorThrown) ->
            
        beforeSend: ->

        success: (data, textStatus, jqXHR) ->
    
            $("a[data-id='" + phone_id + "']").closest("td").closest("tr").remove()
                
    # Modal
    #$('#myModal').modal 'hide'
    
    

# Crud Telefono - New
$(document).delegate ".new", "click", (event) ->
    
    event.preventDefault()
    
    # Variable
    phone_id = ''
    profile_id = $(this).attr("data-id-profile")
    
    # Set Inputs
    $("#num_telefono").val('')
     
    # Modal
    $('#myModal').modal 'show'

# Crud Telefono - Save
$(document).delegate ".save", "click", (event) ->
    
    if phone_id != ''

         # Set Html
        $(".phone_type_"+phone_id).html($("#phone_type_id option:selected").text())
        $(".num_telefono_"+phone_id).html($("#num_telefono").val())
        
        # Set Data
        $("a[data-id='" + phone_id + "']").attr("data-type", $("#phone_type_id option:selected").val())
        $("a[data-id='" + phone_id + "']").attr("data-num", $("#num_telefono").val())
    
        $.ajax '/profile_phones/'+phone_id,
            type: 'PUT'
            dataType: 'json'
            data: { 
                _method:'PUT', 
                profile_phones : { num_telefono: $("#num_telefono").val(), phone_type_id: $("#phone_type_id option:selected").val()  } 
                
            }
            error: (jqXHR, textStatus, errorThrown) ->
                
            beforeSend: ->
    
            success: (data, textStatus, jqXHR) ->
                    
                
    else
    
        $.ajax '/profile_phones',
            type: 'POST'
            dataType: 'json'
            data: { 
               profile_phones : { num_telefono: $("#num_telefono").val(), phone_type_id: $("#phone_type_id option:selected").val(), profile_id: profile_id   } 
            }
            error: (jqXHR, textStatus, errorThrown) ->
                
            beforeSend: ->
    
            success: (data, textStatus, jqXHR) ->
                
                td_edit     = '<a href="#" data-id="'+data.id+'" data-type="'+$("#phone_type_id option:selected").val()+'" data-num="'+$("#num_telefono").val()+'" data-id-profile="'+profile_id+'">Editar</a>'    
                td_delete   = '<a href="#" data-id="'+data.id+'" data-type="'+$("#phone_type_id option:selected").val()+'" data-num="'+$("#num_telefono").val()+'" data-id-profile="'+profile_id+'">Eliminar</a>'    
                td_actions  = '<tr><td >'+ $("#phone_type_id option:selected").text()+'</td><td>'+$("#num_telefono").val()+'</td>'
                td_data  = '<td align="center">'+td_edit+'</td><td align="center">'+td_delete+'</td></tr>'                 
                $(".table-bordered tbody").append(td_actions+td_data).hide().fadeIn();


        # Modal
    $('#myModal').modal 'hide'