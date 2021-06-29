<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="Evaluacion03.WebForm1" %>
<%@ Import Namespace="Evaluacion03.Clases" %>

<%
    var rut = Request["rut"];
    var clave = Request["clave"];

    Dictionary<string, Usuario> lista;
    if (Session["lista"] != null)
        lista = (Dictionary<string, Usuario>)Session["lista"];
    else
        lista = new Dictionary<string, Usuario>();


    if (lista.ContainsKey(rut))
    {
        Usuario u = lista[rut];
        if(u.Clave == clave) 
        {
            switch (u.Tipo) 
            {
                case "admin":
                    Response.Redirect("");
                    break;

                case "vendedor":
                    Response.Redirect("");
                    break;

                case "cliente":
                    Response.Redirect("");
                    break;
            }                
        }
    }
    else
    {
        Response.Write("Rut o clave incorrectos");
    }
%>

