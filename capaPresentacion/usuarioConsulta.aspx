<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarioConsulta.aspx.cs" Inherits="capaPresentacion.usuarioConsulta" %>
<pages validateRequest="false" enableEventValidation="false" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Usuario</h1>
        </div>
        <div>
        <asp:Button ID="btn_usuarios"  runat="server" Height="22px" Text="Crear Usuario" Width="128px" OnClick="btn_usuarios_Click" />
        </div>
        <div>
            <asp:GridView ID="grd_usuario" runat="server" AutoGenerateColumns="false"  Width="383px" OnSelectedIndexChanged="grd_usuario_SelectedIndexChanged" OnDataBound="grd_usuario_DataBound" OnRowCommand="grd_usuario_RowCommand">
                 <Columns>
                          <asp:TemplateField HeaderText="Nombre">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_usuario" runat="server" Text='<%# Eval("nombre") %>' ></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Fecha Nacimiento">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_fechaNacimiento" runat="server" Text='<%# Eval("fechaNacimiento") %>' ></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Sexo">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_sexo" runat="server" Text='<%# Eval("sexo") %>' ></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                     <asp:TemplateField>
                         <ItemTemplate>
                             <asp:Button ID="btn_modificar"  runat="server" Text="Modificar" commandargument='<%# Eval("id") %>' commandname="Modificar"/>
                             <asp:Button ID="btn_eliminar" runat="server" Text="Eliminar" commandargument='<%# Eval("id") %>' commandname="Eliminar"/>

                         </ItemTemplate>
                     </asp:TemplateField>
                                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
