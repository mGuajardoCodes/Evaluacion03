function addProd() {
    let codigo = $("#txtCodigo").val();
    let nombre = $("#txtNombre").val();
    let descripcion = $("#txtDescripcion").val();
    let precio = $("#txtPrecio").val();
    let calificacion = $("#txtCalificacion").val();
    let userEmail = $("#txtUserEmail").val();

    $.ajax({
        type: "post",
        url: "Vendedor.aspx",
        data: { "codigo": codigo, "nombre": nombre, "descripcion": descripcion, "precio": precio, "calificacion": calificacion, "userEmail": userEmail },
        success: function (data) {
            if (data == "correcto")
                alert("Producto registrado!");
            else
                alert("Error al registrar el producto");

        }
    }

}