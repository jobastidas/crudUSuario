using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using capaDatos;
namespace capaNegocio
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IUsuario
    {
        [OperationContract]
        IEnumerable<usuario> Consultar();
        [OperationContract]
        int Agregar(string nombre, string fechaNacimiento, string sexo);
        [OperationContract]

        int Modificar(string nombre, string fechaNacimiento, string sexo, int id);
        [OperationContract]

        int Eliminar(int id);
        [OperationContract]
        usuario Leer(int id);


    }
}
