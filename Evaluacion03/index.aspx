<%@ Page Title="" Language="C#" MasterPageFile="~/indextemple.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Evaluacion03.inde" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Rut:<input type="text" name="txtRut" id="txtRut" /><br />
    Nombre:<input type="text" name="txtNombre" id="txtNombre" /><br />
    Apellido:<input type="text" name="txtApellido" id="txtApellido" /><br />
    Correo:<input type="email" name="txtCorreo" id="txtCorreo" /><br />
    Contraseña:<input type="password" name="txtClave" id="txtClave" /><br />
    Repetir contraseña:<input type="password" name="txtRClave" id="txtRClave" /><br />
    Tipo usuario 
    <input type="radio" name="tipo" id="admin" /> administrador 
    <input type="radio" name="tipo" id="vendedor" /> vendedor
    <input type="radio" name="tipo" id="cliente" />  cliente
    <br />
    <button onclick="registrar()">Registrar</button>
</asp:Content>
