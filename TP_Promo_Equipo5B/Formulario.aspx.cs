using dominio;
using Dominio;
using negocio;
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
            
            if (!IsPostBack)
            {
                txtNombre.Attributes["placeholder"] = "Juanito";
                txtApellido.Attributes["placeholder"] = "Argento";
                txtEmail.Attributes["placeholder"] = "juanito@ejemplo.com";
                txtDireccion.Attributes["placeholder"] = "Mi ciudad";
                txtCiudad.Attributes["placeholder"] = "Calle 123";
                txtCP.Attributes["placeholder"] = "5521";
            }

        }
        protected void txtDocumento_TextChanged(object sender, EventArgs e)
        {

            string dni = txtDocumento.Text.Trim();

            if (!string.IsNullOrEmpty(dni))
            {
                ClienteNegocio negocio = new ClienteNegocio();
                Cliente clienteEncontrado = negocio.buscarClientePorDNI(dni);

                if (clienteEncontrado != null)
                {
                    txtNombre.Text = clienteEncontrado.Nombre;
                    txtApellido.Text = clienteEncontrado.Apellido;
                    txtEmail.Text = clienteEncontrado.Email;
                    txtDireccion.Text = clienteEncontrado.Direccion;
                    txtCiudad.Text = clienteEncontrado.Ciudad;
                    txtCP.Text = clienteEncontrado.Cp.ToString();

                    
                }
                else
                {
                    txtNombre.Text = "";
                    txtApellido.Text = "";
                    txtEmail.Text = "";
                    txtDireccion.Text = "";
                    txtCiudad.Text = "";
                    txtCP.Text = "";

                    txtNombre.Attributes["placeholder"] = "Juanito";
                    txtApellido.Attributes["placeholder"] = "Argento";
                    txtEmail.Attributes["placeholder"] = "juanito@ejemplo.com";
                    txtDireccion.Attributes["placeholder"] = "Mi ciudad";
                    txtCiudad.Attributes["placeholder"] = "Calle 123";
                    txtCP.Attributes["placeholder"] = "5521";
                }
               
                

            }
            
        }


        protected void btnParticipar_Click(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;


                string dni = txtDocumento.Text.Trim();

                ClienteNegocio negocio = new ClienteNegocio();

                Cliente nuevoCliente = new Cliente();
                nuevoCliente.Documento = dni;
                nuevoCliente.Nombre = txtNombre.Text;
                nuevoCliente.Apellido = txtApellido.Text;
                nuevoCliente.Email = txtEmail.Text;
                nuevoCliente.Direccion = txtDireccion.Text;
                nuevoCliente.Ciudad = txtCiudad.Text;
                nuevoCliente.Cp = int.Parse(txtCP.Text);

                Cliente clienteEncontrado = negocio.buscarClientePorDNI(dni);

                int idCliente;

                if (clienteEncontrado == null)
                {
                    negocio.agregar(nuevoCliente);

                    idCliente = negocio.ultimoId();
                }
                else { 
                    idCliente= clienteEncontrado.Id;
                }

                //RECUPERO CODIGO VOUCHER E IDARTICULO
                string cv = Request.QueryString["cv"].ToString();
                string idA = Request.QueryString["idA"].ToString();

                // armo el objeto Voucher antes de actualizar

                Voucher voucher = new Voucher();
                voucher.Codigo = cv;
                voucher.IdCliente = idCliente;
                voucher.IdArticulo = int.Parse(idA);
                voucher.FechaCanje = DateTime.Now;

                VoucherNegocio voucherNegocio = new VoucherNegocio();

                voucherNegocio.modificar(voucher);


                Response.Redirect("Exito.aspx");
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }

        protected void valAceptoRequerido_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkAcepto.Checked;
        }
    }
}