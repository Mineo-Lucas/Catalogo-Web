﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CatalogoWeb.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Home
        </h1>
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Campo:"></asp:Label>
        <asp:DropDownList ID="DdlCampo" runat="server" OnSelectedIndexChanged="DdlCampo_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        <asp:Label ID="Label2" runat="server" Text="Criterio:"></asp:Label>
        <asp:DropDownList ID="DdlCriterio" runat="server"></asp:DropDownList>
        <asp:Label ID="Label3" runat="server" Text="Filtro:"></asp:Label>
        <asp:TextBox ID="TxtFiltroAvanzado" runat="server"></asp:TextBox>
        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" OnClick="BtnBuscar_Click"
            />
    </div>
    <div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <%foreach (var articulo in ListaArticulos)
                {%>
            <div class="col">
                <div class="card">
                    <img src="<%:articulo.Imagen %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%:articulo.Nombre %></h5>
                        <p class="card-text"><%:articulo.Descripcion %></p>
                        <asp:Button ID="BtnVerDetalles" runat="server" Text="Ver Detalles" />
                    </div>
                </div>
            </div>
            <%} %>
        </div>
    </div>
</asp:Content>
