﻿using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_Promo_Equipo5B
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbxCodigoVaucher.Attributes["placeholder"] = "XXXXXXXXXXXXXXX";
            }

        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;

                VoucherNegocio voucherNegocio = new VoucherNegocio();
                // Si el codigo es valido(está y no fue usado) en la DB cambia de pagina
                if (voucherNegocio.codigoValido(tbxCodigoVaucher.Text))
                {
                    // me llevo el codigo voucher a la siguiente pag

                    string cv = tbxCodigoVaucher.Text;

                    Response.Redirect("Premio.aspx?cv=" + cv);
                }
                else
                {
                    Response.Redirect("CodigoErroneo.aspx");
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            



        }
    }
}