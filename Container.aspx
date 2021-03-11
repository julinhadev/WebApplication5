<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Container.aspx.cs" Inherits="WebApplication5.Container" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="font-size:x-large" align="center">Formulário de Contêiner</div>
        <table class="nav-justified">
            <tr>
                <td style="width: 166px; height: 30px;">Código do cliente:</td>
                <td style="height: 30px">
                    <asp:TextBox ID="txtCodCliente" runat="server"></asp:TextBox>
        <asp:Button ID="btnBusca" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="White" Text="Buscar dados" OnClick="btnBusca_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 30px;">Nome do cliente:</td>
                <td style="height: 30px">
                    <asp:TextBox ID="txtNmCliente" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 30px;">Número do contêiner:</td>
                <td style="height: 30px">
                    <asp:TextBox ID="txtConteiner" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 30px;">Tipo:</td>
                <td style="height: 30px">
                    <asp:DropDownList ID="ddTipo" runat="server">
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 30px;">Status:</td>
                <td style="height: 30px">
                    <asp:DropDownList ID="ddStatus" runat="server" Height="23px">
                        <asp:ListItem>Cheio</asp:ListItem>
                        <asp:ListItem>Vazio</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 30px;">Categoria:</td>
                <td style="height: 30px">
                    <asp:DropDownList ID="ddCategoria" runat="server" Height="20px">
                        <asp:ListItem>Exportação</asp:ListItem>
                        <asp:ListItem>Importação</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnCadastrar" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="White" Text="Cadastrar" OnClick="btnCadastrar_Click" />
        <asp:Button ID="btnAlterar" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="White" Text="Alterar" OnClick="btnAlterar_Click" />
        <asp:Button ID="btnDeletar" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="White" Text="Deletar" OnClick="btnDeletar_Click" />
        <asp:Button ID="btnConsultar" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="White" Text="Consultar" OnClick="btnConsultar_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="consultaCont" runat="server" Width="965px">
        </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br/>
    </div>
</asp:Content>
