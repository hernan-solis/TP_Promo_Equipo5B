using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace TP_Promo_Equipo5B
{
    public partial class Premio : System.Web.UI.Page
    {
        public  List<Articulo> ListaDePremios { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                ArticuloNegocio negocio = new ArticuloNegocio();

                ListaDePremios = negocio.listar();

                RepRepetidor.DataSource = ListaDePremios;
                RepRepetidor.DataBind();
            }
        }

        // Metodo para poder cargar las imagenes anidadas
        protected void RepRepetidor_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Articulo articulo = (Articulo)e.Item.DataItem;

                Repeater repImagenes = (Repeater)e.Item.FindControl("RepImagenes");

                if (repImagenes != null)
                {
                    repImagenes.DataSource = articulo.Imagenes;
                    repImagenes.DataBind();
                }
            }
        }

        //para que el boton de las tarjeta redirija a la pagina del formulario
        protected void RepRepetidor_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Seleccionar")
            {
                Response.Redirect("Formulario.aspx");
            }
        }
    }
}