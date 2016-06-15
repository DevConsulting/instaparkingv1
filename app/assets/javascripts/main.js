/*global 
$, $link, showMessage*/

function registerBlock() {
     $('.pestanas a').click(function () {
        var bloque, $link = $(this);

        $('.pestanas a').removeClass('activo');
        $link.addClass('activo');

        bloque = $link.data('bloque');
        $('.bloque').hide();
        $(bloque).show();
        return false;
    });
}

function setBuscador(tab) {
    if (tab == 1) {
        $link = $("#tab1");
    } else {
        $link = $("#tab2");
    }

    var bloque;
    $('.pestanas a').removeClass('activo');
    $link.addClass('activo');
    bloque = $link.data('bloque');
    $('.bloque').hide();
    $(bloque).show();
    return false;
}
function validarTab1() {
   
    if ($("#txtDireccionBuscador").val() == "") {
        showMessage("Ingresa una direcci&oacute;n");
        return false;
    } else {
        document.forms[0].target = "_blank";
        return true;
    }
//si todo es correcto return true
}

function validarTab2(ddlDpto,ddlProv,ddlDist) {


    var strMensaje = "";

    if (ddlDpto.value == "0") {
        strMensaje = strMensaje + "- Selecciona un departamento<br>";
    }

    if (ddlProv.value == "0") {
        strMensaje = strMensaje + "- Selecciona una provincia<br>";
    }


    if (ddlDist.value == "0") {
        strMensaje = strMensaje + "- Selecciona un distrito<br>";
    }

    if (strMensaje != "") {
        strMensaje = "Por favor revise lo siguiente y vuelva a intentarlo:<br>" + strMensaje;

        showMessage(strMensaje);

        return false;
    }

    document.forms[0].target = "_blank";
    return true;
}