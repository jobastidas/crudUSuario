<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarioConsulta.aspx.cs" Inherits="capaPresentacion.usuarioConsulta" %>
<pages validateRequest="false" enableEventValidation="false" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
               <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Consultar Usuario</title>

    <style type="text/css">
   .header {
    color: #36A0FF;
    font-size: 27px;
    padding: 10px;
}

.bigicon {
    font-size: 35px;
    color: #36A0FF;
}

body {
    font: 11px Tahoma;
}

h1 {
    font: bold 32px Times;
    color: #666;
    text-align: center;
    padding: 20px 0;
}

#container {
    width: 700px;
    margin: 10px auto;
}

.mGrid {
    width: 100%;
    background-color: #fff;
    margin: 5px 0 10px 0;
    border: solid 1px #525252;
    border-collapse: collapse;
}

    .mGrid td {
        padding: 2px;
        border: solid 1px #c1c1c1;
        color: #717171;
    }

    .mGrid th {
        padding: 4px 2px;
        color: #fff;
        background: #424242 url(grd_head.png) repeat-x top;
        border-left: solid 1px #525252;
        font-size: 0.9em;
    }

    .mGrid .alt {
        background: #fcfcfc url(grd_alt.png) repeat-x top;
    }

    .mGrid .pgr {
        background: #424242 url(grd_pgr.png) repeat-x top;
    }

        .mGrid .pgr table {
            margin: 5px 0;
        }

        .mGrid .pgr td {
            border-width: 0;
            padding: 0 6px;
            border-left: solid 1px #666;
            font-weight: bold;
            color: #fff;
            line-height: 12px;
        }

        .mGrid .pgr a {
            color: #666;
            text-decoration: none;
        }

            .mGrid .pgr a:hover {
                color: #000;
                text-decoration: none;
            }

</style>
</head>
<body>

     <div class="container">
          
       <div >
                                    
           <form id="form1" runat="server"  class="row ">
       
                <div class="col-md-12">
                                          <div class="well well-sm">
                                                  <div  class="form-horizontal">
                                                       <fieldset>
                                                      <legend class="text-center header">Consultar Usuario</legend>
                                                     </fieldset>

                                                      </div>
                                              </div>

                     <div align="right" class="col align-self-end">
        <asp:Button ID="btn_usuarios"  runat="server"  Text="Crear Usuario"  OnClick="btn_usuarios_Click" CssClass="btn btn-success" />
        </div>

       
        <div>
            <asp:GridView ID="grd_usuario" runat="server" AutoGenerateColumns="false"  OnSelectedIndexChanged="grd_usuario_SelectedIndexChanged" OnDataBound="grd_usuario_DataBound" OnRowCommand="grd_usuario_RowCommand"
                GridLines="None"
                AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
               
                >
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
                             <asp:Button ID="btn_modificar"  runat="server" Text="Modificar" commandargument='<%# Eval("id") %>' commandname="Modificar" CssClass="btn btn-warning"/>
                             <asp:Button ID="btn_eliminar" runat="server" Text="Eliminar" commandargument='<%# Eval("id") %>' commandname="Eliminar" CssClass="btn btn-danger"/>

                         </ItemTemplate>
                     </asp:TemplateField>
                                </Columns>
            </asp:GridView>
        </div>
    </form>
           </div>
         </div>
    
</body>
</html>
