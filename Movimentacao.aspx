<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Movimentacao.aspx.cs" Inherits="WebApplication5.Movimentacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="font-size:x-large" align="center">Formulário de Movimentação</div>
        <table class="nav-justified">
            <tr>
                <td style="width: 156px">Código do cliente:</td>
                <td>
                    <asp:TextBox ID="txtCodMov" runat="server"></asp:TextBox>
        <asp:Button ID="btnBuscaMov" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="White" Text="Buscar dados" OnClick="btnBuscaMov_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 156px">Tipo de movimentação:</td>
                <td>
                    <asp:DropDownList ID="ddTipoMov" runat="server">
                        <asp:ListItem>Descarga</asp:ListItem>
                        <asp:ListItem>Embarque</asp:ListItem>
                        <asp:ListItem>Gate In</asp:ListItem>
                        <asp:ListItem>Gate Out</asp:ListItem>
                        <asp:ListItem>Posicionamento</asp:ListItem>
                        <asp:ListItem>Pesagem</asp:ListItem>
                        <asp:ListItem>Scanner</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 156px">Data início:</td>
                <td>
                    <asp:TextBox ID="txtDataIni" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 156px; height: 20px">Data fim:</td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtDataFim" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="btnCadastrarMov" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="White" Text="Cadastrar" OnClick="btnCadastrarMov_Click" />
        <asp:Button ID="btnAlterarMov" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="White" Text="Alterar" OnClick="btnAlterarMov_Click" />
        <asp:Button ID="btnDeletarMov" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="White" Text="Deletar" OnClick="btnDeletarMov_Click" />
        <asp:Button ID="btnConsultarMov" runat="server" BackColor="#003366" Font-Bold="True" ForeColor="White" Text="Consultar" OnClick="btnConsultarmov_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="consultaMov" runat="server" Width="947px">
        </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
</asp:Content>
