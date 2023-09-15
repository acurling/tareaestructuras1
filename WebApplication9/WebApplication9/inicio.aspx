<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="WebApplication9.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            color: #FF3300;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><span class="auto-style1">INGRESO DE PELICULAS</span></strong><br />
        <br />
        Pelicula:&nbsp; <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
        <br />
        Imagen:&nbsp;
        <asp:FileUpload ID="FCargarArchivo" runat="server" />
        <br />
        <br />
        <asp:Button ID="Bsalvar" runat="server" OnClick="Bsalvar_Click" Text="Salvar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Tlistado" runat="server" Height="28px" OnClick="Tlistado_Click" Text="Listado de peliculas" Width="145px" />
        <br />
        <br />
        <asp:Label ID="Lmensaje" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
