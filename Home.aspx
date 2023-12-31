﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CatalogoWeb.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <h1>Home
        </h1>
    </div>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Campo:"></asp:Label>
                <asp:DropDownList ID="DdlCampo" runat="server" OnSelectedIndexChanged="DdlCampo_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                <asp:Label ID="Label2" runat="server" Text="Criterio:"></asp:Label>
                <asp:DropDownList ID="DdlCriterio" runat="server"></asp:DropDownList>
                <asp:Label ID="Label3" runat="server" Text="Filtro:"></asp:Label>
                <asp:TextBox ID="TxtFiltroAvanzado" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ErrorMessage="solo numeros" ValidationExpression="^[0-9]+$" ID="RevFiltro" ControlToValidate="TxtFiltroAvanzado" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="BtnBuscar_Click" />
    </div>
    <div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <%foreach (var Articulo in ListaArticulos)
                {%>
            <div class="col">
                <div class="card">
                    <img src="<%:Articulo.Imagen %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%:Articulo.Nombre %></h5>
                        <p class="card-text"><%:Articulo.Descripcion %></p>
                        <a href="VerDetalles.aspx?Id=<%:Articulo.Id %>">Ver detalles/Agregar a favoritos</a>
                    </div>
                </div>
            </div>
            <%} %>
        </div>
    </div>
</asp:Content>
