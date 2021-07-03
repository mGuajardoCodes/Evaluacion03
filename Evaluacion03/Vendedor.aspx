<%@ Page Title="" Language="C#" MasterPageFile="~/Vendedor.Master" AutoEventWireup="true" CodeBehind="Vendedor.aspx.cs" Inherits="Evaluacion03.WebForm3" %>
<%@ Import Namespace="Evaluacion03.Clases" %>
<asp:Content ID="Menu" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="addProduct" ContentPlaceHolderID="AddProductContent" runat="server">
    Codigo:<input type="text" name="txtCodigo" id="txtCodigo" /><br />
    Nombre:<input type="text" name="txtNombre" id="txtNombre" /><br />
    Descripción:<input type="text" name="txtDescripcion" id="txtDescripcion" /><br />
    Precio:<input type="text" name="txtPrecio" id="txtPrecio" /><br />
    Calificación:<input type="text" name="txtCalificacion" id="txtCalificacion" /><br />
    Correo Vendedor:<input type="email" name="txtUserEmail" id="txtUserEmail" /><br />
    <button onclick="addProd()">Añadir Producto</button>
</asp:Content>

<%
    Producto producto = new Producto();
    producto.codigo = Request["user"];
    u.Nombre = Request["nombre"];
    u.Apellido = Request["apellido"];
    u.Correo = Request["correo"];
    u.Clave = Request["clave"];
    u.Tipo = Request["tipo"];

    Dictionary<string, Usuario> lista;
    if (Session["lista"] != null)
        lista = (Dictionary<string, Usuario>)Session["lista"];
    else
        lista = new Dictionary<string, Usuario>();

    if (lista.ContainsKey(u.Rut))
        Response.Write("error");
    else
    {
        lista.Add(u.Rut, u);
        Session["lista"] = lista;
        Response.Write("correcto");
    }
%>