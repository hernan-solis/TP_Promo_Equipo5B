using Dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class ClienteNegocio
    {
        public Cliente BuscarClientePorDNI(string dni)
        {
            AccesoDatos datos = new AccesoDatos();
            try
            {

                Cliente cliente = new Cliente();
                string consulta = @"SELECT Nombre, Apellido, Email, Direccion, Ciudad, CP FROM Clientes WHERE DOCUMENTO = @dni";

                datos.setearConsulta(consulta);
                datos.setearParametro("@dni", dni);

                datos.ejecutarLectura();

                if (datos.Lector.Read())
                {
                    cliente.Nombre = (string)datos.Lector["Nombre"];
                    cliente.Apellido = (string)datos.Lector["Apellido"];
                    cliente.Email = (string)datos.Lector["Email"];
                    cliente.Direccion = (string)datos.Lector["Direccion"];
                    cliente.Ciudad = (string)datos.Lector["Ciudad"];
                    cliente.Cp = (int)datos.Lector["CP"];
                }

                return cliente;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

    }
}
