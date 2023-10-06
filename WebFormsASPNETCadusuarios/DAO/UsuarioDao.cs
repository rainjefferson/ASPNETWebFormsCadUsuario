using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsASPNETCadusuarios.DAO
{
    public class UsuarioDao
    {
        public usuarios ConsultarUsuarioPorEmail(string email)
        {
            using (webforms_vsEntities ctx = new webforms_vsEntities())
            {
                return ctx.usuarios.Where(t => t.email == email).FirstOrDefault();
            }            
        }

        public void CadastrarUsuario(usuarios objUsu)
        {
            using (webforms_vsEntities ctx = new webforms_vsEntities())
            {
                ctx.usuarios.Add(objUsu);
                ctx.SaveChanges();
            }
        }
    }
}