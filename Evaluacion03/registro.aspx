<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Evaluacion03.WebForm2" %>
<%@ Import Namespace="Evaluacion03.Clases" %>

<%
    Usuario u = new Usuario();
    u.Rut = Request["user"];
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
