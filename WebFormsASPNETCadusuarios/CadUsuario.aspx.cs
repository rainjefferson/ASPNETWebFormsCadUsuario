using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsASPNETCadusuarios
{
    public partial class CadUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultarCEP_Click(object sender, EventArgs e)
        {
            try
            {            
                using (var ws = new wsCorreios.AtendeClienteService())
                {
                    var resultado = ws.consultaCEP(txtCEP.Text);
                    txtEndereco.Text = resultado.end + ", bairro: " + resultado.bairro + ", cidade: " + resultado.cidade + "-" + resultado.uf;
                }
            }
            catch (Exception E)
            {
                ExibirMensagem(E.Message);
            }
        }

        public void ExibirMensagem(String msg)
        {
            Response.Write("<script>alert('" + msg + "')</script>");
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

        }
    }
}