function registrar()
{
    let rut = $("#txtRut").val();
    let nombre = $("#txtNombre").val();
    let apellido = $("#txtApellido").val();
    let correo = $("#txtCorreo").val();
    let clave = $("#txtClave").val();
    let rclave = $("#txtRClave").val();
    let tipo = $("tipo").val();

    if (clave == rclave) {

        $.ajax({
            type: "post",
            url: "registro.aspx",
            data: { "user": rut, "nombre": nombre, "apellido": apellido, "correo": correo, "clave": clave, "tipo": tipo },
            success: function (data) {
                if (data == "correcto")
                    location.href = "login.aspx";
                else
                    alert("Error al registrar usuario");

            }
        })
    }
    else
        alert("contraseñas no coinciden");
}

function login()
{
    let rut = $("#txtRut").val();
    let clave = $("#txtClave").val();

    if (rut == "" || clave == "")
        alert("Complete los campos")
    else
    {
        $.ajax({
            type: "post",
            url: "log.aspx",
            data: { "user": rut,"clave": clave},
            success: function (data) {
                if (data == "correcto")
                    location.href = "login.aspx";
                else
                    alert("Error al registrar usuario");

            }
        })
    }

    
}