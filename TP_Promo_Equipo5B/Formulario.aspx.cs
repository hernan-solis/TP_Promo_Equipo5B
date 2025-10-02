using Dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_Promo_Equipo5B
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void txtDocumento_TextChanged(object sender, EventArgs e)
        {
            string dni = txtDocumento.Text.Trim();

            if (!string.IsNullOrEmpty(dni))
            {
                ClienteNegocio negocio = new ClienteNegocio();
                Cliente clienteEncontrado = negocio.BuscarClientePorDNI(dni);

                if (clienteEncontrado != null)
                {
                    txtNombre.Text = clienteEncontrado.Nombre;
                    txtApellido.Text = clienteEncontrado.Apellido;
                    txtEmail.Text = clienteEncontrado.Email;
                    txtDireccion.Text = clienteEncontrado.Direccion;
                    txtCiudad.Text = clienteEncontrado.Ciudad;
                    txtCP.Text = clienteEncontrado.Cp.ToString();
                }
               
            }
        }


        protected void btnAceptar_Click(object sender, EventArgs e)
        {
           
        }
    }
}