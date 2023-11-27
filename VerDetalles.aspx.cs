﻿using clases;
using Metodos_y_Conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatalogoWeb
{
    public partial class VerDetalles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Metodos metodos = new Metodos();
            if (!IsPostBack)
            {
                string Id = Request.QueryString["id"].ToString();
                Articulo Seleccionado = (metodos.BuscarArticuloPorId(Id))[0];
                LblDescripcion.Text = Seleccionado.Descripcion;
                LblCodigo.Text=Seleccionado.Codigo;
                LblPrecio.Text = Seleccionado.Precio.ToString();
                LblMarca.Text=Seleccionado.Marca.ToString();
                LblCategoria.Text = Seleccionado.categoria.ToString();
            }
        }
    }
}