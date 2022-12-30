using capaPresentacion.UsuarioReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
namespace capaPresentacion
{
    public partial class usuario : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    using (UsuarioClient usuario = new UsuarioClient())
                    {
                        UsuarioReference.usuario usu =  usuario.Leer(Convert.ToInt16( Request.QueryString["id"]));
                        string nombre = usu.nombre;
                        txt_nombre.Text = nombre;
                        string fecha = usu.fechaNacimiento.Value.ToString("yyyy-MM-dd");
                        txt_fecha.Text = fecha;
                        string sexo = usu.sexo;
                        drp_sexo.SelectedValue = sexo;
                    }
                }
            }
              
        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32( Request.QueryString["id"])  > 0)
            {
                using (UsuarioClient usuario = new UsuarioClient())
                {
                    int insertar = usuario.Modificar(txt_nombre.Text, txt_fecha.Text, drp_sexo.SelectedValue.ToString(), Convert.ToInt32(Request.QueryString["id"]));
                    if (insertar > 0)
                    {
                        Response.Redirect("usuarioConsulta.aspx");
                    }
                }
            }
            else
            {
                using (UsuarioClient usuario = new UsuarioClient())
                {
                    int insertar = usuario.Agregar(txt_nombre.Text, txt_fecha.Text, drp_sexo.SelectedValue.ToString());
                    if (insertar > 0)
                    {
                        Response.Redirect("usuarioConsulta.aspx");
                    }
                }
            }
          
         }

        protected void btn_volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("usuarioConsulta.aspx");
        }
    }
}