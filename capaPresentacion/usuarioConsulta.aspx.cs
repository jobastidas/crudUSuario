using capaPresentacion.UsuarioReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace capaPresentacion
{
    public partial class usuarioConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Consultar();
            }
        }

        private void Consultar()
        {
            using (UsuarioClient usuario = new UsuarioClient())

            {
                grd_usuario.DataSource = usuario.Consultar();
                grd_usuario.DataBind();
            }
        }

        protected void btn_usuarios_Click(object sender, EventArgs e)
        {
          
                    Response.Redirect("usuario.aspx");
              
        }
        protected void grd_usuario_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grd_usuario_DataBound(object sender, EventArgs e)
        {
            foreach (GridViewRow row in grd_usuario.Rows)
            {
                Label lbl_usuario = (Label)row.FindControl("lbl_sexo");
                Button btn = (Button)row.FindControl("btn_eliminar");
                btn.OnClientClick = "javascript:if(!confirm('¿Está seguro de eliminar este registro?')){return false};";
                if (lbl_usuario.Text == "M")
                {
                    lbl_usuario.Text = "Masculino";
                }
                else if (lbl_usuario.Text == "F")
                {
                    lbl_usuario.Text = "Femenino";
                }
            }
        }

        protected void grd_usuario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "Modificar")
            {
                Response.Redirect("usuario.aspx?id=" + e.CommandArgument);
            }  else if (e.CommandName.ToString() == "Eliminar")
            {
                var id =  e.CommandArgument;

                using (UsuarioClient usuario = new UsuarioClient())

                {
                    usuario.Eliminar(Convert.ToInt32(id));
                    Consultar();
                    /* grd_usuario.DataSource = usuario.Consultar();
                     grd_usuario.DataBind();   */
                }
            }
        }
    }
}