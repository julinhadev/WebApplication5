<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication5._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Porto</h1>
        <p class="lead">Bem-vindo ao sistema de gerenciamento de contêiner.</p>
        <a href="https://localhost:44310/Container" class="btn btn-primary btn-lg">Formulário de Contêiner &raquo;</a>
        <a href="https://localhost:44310/Movimentacao" class="btn btn-primary btn-lg">Movimentação de Contêiner &raquo;</a>
        <a href="https://localhost:44310/Report" class="btn btn-primary btn-lg">Relatório &raquo;</a>
    </div>


</asp:Content>
