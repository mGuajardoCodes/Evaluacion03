<%@ Page Title="" Language="C#" MasterPageFile="~/indextemple.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Evaluacion03.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     Rut:<input type="text" name="txtRut" id="txtRut" /><br />
     Clave:<input type="password" name="txtClave" id="txtClave" /><br />
     <button onclick="login()"> Entrar </button>
</asp:Content>
