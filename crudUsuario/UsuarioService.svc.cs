using capaDatos;
using System;
using System.Collections.Generic;
using System.Linq;

namespace capaNegocio
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
    // NOTE: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Service1.svc o Service1.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class UsuarioService : IUsuario
    {
        public IEnumerable<usuario> Consultar()
        {
            using (crudUSuarioEntities contexto = new crudUSuarioEntities())
            {
                return contexto.usuario.AsNoTracking().ToList();
            }
        }


        public int Agregar(string nombre, string fechaNacimiento, string sexo)
        {
            int myValue;
            using (crudUSuarioEntities contexto = new crudUSuarioEntities())
            {
                myValue = (int)contexto.crearUsuario(nombre, Convert.ToDateTime( fechaNacimiento), sexo).FirstOrDefault().Value;
            }

            return (int)myValue;
        }

        public int Modificar(string nombre, string fechaNacimiento, string sexo, int id)
        {
            int myValue;
            using (crudUSuarioEntities contexto = new crudUSuarioEntities())
            {
                myValue = (int)contexto.actualizarUsuario(id, nombre, Convert.ToDateTime(fechaNacimiento), sexo);
            }

            return (int)myValue;
        }

        public int Eliminar(int id)
        {
            int myValue;
            using (crudUSuarioEntities contexto = new crudUSuarioEntities())
            {
                myValue = (int)contexto.eliminarUsuario(id);
            }
            return (int)myValue;
        }

        public usuario Leer(int id)
        {
            usuario t_obj_usuario;
            using (crudUSuarioEntities contexto = new crudUSuarioEntities())
            {
                t_obj_usuario = contexto.usuario.Where(x => x.id == id).FirstOrDefault();
            }
            return t_obj_usuario;
        }
    }
}
