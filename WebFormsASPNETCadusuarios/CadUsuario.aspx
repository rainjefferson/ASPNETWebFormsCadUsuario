<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadUsuario.aspx.cs" Inherits="WebFormsASPNETCadusuarios.CadUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Usuário</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Cadastro de usuário</h1>
            <asp:Label Text="Código:" runat="server" /><br />            
            <asp:TextBox ID="txtCodigo" runat="server" /><br />
            <asp:Label Text="Nome:" runat="server" /><br />            
            <asp:TextBox ID="txtNome" runat="server" /><br />
            <asp:Label Text="E-mail:" runat="server" /><br />            
            <asp:TextBox ID="txtEmail" runat="server" /><br />
            <asp:Label Text="Senha:" runat="server" /><br />            
            <asp:TextBox ID="txtSenha" TextMode="Password" runat="server" /><br />
            <asp:Label Text="CEP:" runat="server" /><br />            
            <asp:TextBox ID="txtCEP" runat="server" /> 
            <asp:Button ID="btnConsultarCEP" Text="Consultar CEP" OnClick="btnConsultarCEP_Click" runat="server" /><br />    
            <asp:Label Text="Endereço" runat="server" /><br />            
            <asp:TextBox ID="txtEndereco" runat="server" /><br />
            <asp:Label Text="Caminho da Foto:" runat="server" /><br />     
            <asp:FileUpload ID="fupFoto" runat="server" /><br /><br />    
        </div>
        <p>
            <asp:Button ID="btnCadastrar" Text="Cadastrar" OnClick="btnCadastrar_Click" runat="server" />
        </p>
         <p>
             <asp:GridView ID="gridUsuario" runat="server"></asp:GridView>

    </form>
</body>
</html>
