<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listado.aspx.cs" Inherits="WebApplication9.Listado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>LISTADO DE PELICULAS</strong></span><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Cargar Peliculas" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="143px" Width="303px">
            <Columns>
                <asp:BoundField DataField="codigo" HeaderText="CODIGO" />
                <asp:BoundField DataField="nombre" HeaderText="NOMBRE" />
                <asp:TemplateField HeaderText="IMAGEN">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="223px" ImageUrl='<%# "data:Image/png;base64,"+Convert.ToBase64String ((byte [])Eval("Imagen")) %>' Width="288px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="codigo" HeaderText="Codigo" />
         <asp:BoundField DataField="nombre" HeaderText="Nombre" />
         <asp:templateField HeaderText="Imagen de Pelicula">
             <ItemTemplate>
                 <a href="Reservacion.aspx">
                    <asp:Image ID="Image1" runat="server" Width="300px" Height="300px" ImageUrl='<%# "data:Image/png;base64,"+Convert.ToBase64String ((byte [])Eval("Imagen")) %>' />
                 </a>
            </ItemTemplate>
         </asp:templateField>
    </Columns>

        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
