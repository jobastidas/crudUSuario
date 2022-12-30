<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="usuario.aspx.cs" Inherits="capaPresentacion.usuario" %>

<!DOCTYPE html>

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Usuario</title>

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

</style>

                  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
               <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
</head>

<body>
    <div class="container">
          
       <div align="center">
            <form id="form1" runat="server"  class="row ">
                                   <div class="col-md-12">
                                          <div class="well well-sm">
                                              <div  class="form-horizontal">
                                                    <fieldset>
                                                      <legend class="text-center header"> Crear Usuario</legend>
                                                     </fieldset>

                                                  <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center">                                 
                                <asp:Label ID="lbl_nombre" runat="server" CssClass="form-label " Text="Nombre"></asp:Label>
                             </span>
                            <div class="col-md-8">
                                <div class="row ">
                                    <div align="left" class="col-sm-11 text-left">
                                   <asp:TextBox ID="txt_nombre" runat="server" placeholder="Nombre" CssClass="form-control text-sm-left"></asp:TextBox>

                                    </div>
                                    <div class="col-sm-1">
                                               <asp:RequiredFieldValidator  ID='rfv_nombre' runat='server' ControlToValidate='txt_nombre'
                                   ValidationGroup="form" SetFocusOnError='True' CssClass="text-danger" ForeColor="" Enabled="true" Visible="true">*</asp:RequiredFieldValidator>
                                    
                                    <asp:RegularExpressionValidator ID="rev_nombre" runat="server" ControlToValidate="txt_nombre"
CssClass="text-danger"  ForeColor="" ValidationGroup="form" ValidationExpression="[a-zA-Z ]{2,254}">*</asp:RegularExpressionValidator>
                                    </div>

                                </div>
                                  
                            </div>
                        </div>

                                                                    <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center">
                                <asp:Label ID="lbl_fechaNacieminto" CssClass="form-label" runat="server" Text="Fecha Nacimiento"></asp:Label>
                            </span>              
                            <div class="col-md-8">

                                <div class="row ">
                                    <div class="col-sm-11">
                                  <asp:TextBox ID="txt_fecha" runat="server" TextMode="Date" placeholder="Fecha De Nacimiento" CssClass="form-control col-sm-10"></asp:TextBox>

                                    </div>
                                    <div class="col-sm-1">
                                                  <asp:RequiredFieldValidator ID='rfv_fecha' runat='server' ControlToValidate='txt_fecha'
                    ValidationGroup="form" SetFocusOnError='True' CssClass="text-danger " ForeColor="" Enabled="true" Visible="true">*</asp:RequiredFieldValidator>

</div>
                                </div>
                                  
                            </div>

                          
                        </div>

                                                      <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center">
                                 <asp:Label ID="lbl_sexo" runat="server" Text="Sexo"></asp:Label>
                            </span>              
                            <div class="col-md-8">

                                
                                <div class="row ">
                                    <div class="col-sm-11">
                                   <asp:DropDownList ID="drp_sexo" runat="server" CssClass="form-control col-sm-10">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem Value="M">Masculino</asp:ListItem>
                                    <asp:ListItem Value="F">Femenino</asp:ListItem>
                                </asp:DropDownList>
                                    </div>
                                    <div class="col-sm-1">
                                                  <asp:RequiredFieldValidator ID='tfv_sexo' runat='server' ControlToValidate='drp_sexo'
ValidationGroup="form" SetFocusOnError='True' CssClass="text-danger " ForeColor="" Enabled="true" Visible="true">*</asp:RequiredFieldValidator>
</div>
                                </div>

                                  
                             
                            </div>
                        </div>

                             <br />                     
                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                     <asp:Button ID="btn_guardar" ValidationGroup='form' runat="server" OnClick="btn_guardar_Click" Text="Guardar" CssClass="btn btn-success" />
                                     <asp:Button ID="btn_volver"  runat="server"   Text="Volver"  OnClick="btn_volver_Click"  CssClass="btn btn-danger"/>
                            </div>
                        </div>

                                              </div>
                                              </div>
                                       </div>

                  
        
            </form>
         </div>
        </div>
    
   
</body>
</html>
