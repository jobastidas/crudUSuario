<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="usuario.aspx.cs" Inherits="capaPresentacion.usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Crear Usuario</h1>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txt_nombre" runat="server" Height="19px" Width="150px"></asp:TextBox>
            <asp:RequiredFieldValidator ID='rfv_documento_nombre' runat='server' ControlToValidate='txt_nombre'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" Enabled="true" Visible="true">*</asp:RequiredFieldValidator>

        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Fecha Nacimiento"></asp:Label>
            <asp:TextBox ID="txt_fecha" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID='rfv_fecha' runat='server' ControlToValidate='txt_fecha'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" Enabled="true" Visible="true">*</asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Sexo"></asp:Label>
            <asp:DropDownList ID="drp_sexo" runat="server" Height="16px" Width="153px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem Value="M">Masculino</asp:ListItem>
                <asp:ListItem Value="F">Femenino</asp:ListItem>
            </asp:DropDownList>
              <asp:RequiredFieldValidator ID='tfv_sexo' runat='server' ControlToValidate='drp_sexo'
ValidationGroup="form" SetFocusOnError='True' CssClass="lbl_mensaje" ForeColor="" Enabled="true" Visible="true">*</asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="btn_guardar" ValidationGroup='form' runat="server" Height="30px" OnClick="btn_guardar_Click" Text="Guardar" Width="175px" />
            <asp:Button ID="btn_volver"  runat="server" Height="30px"  Text="Volver" Width="175px" OnClick="btn_volver_Click" />
        
        </p>
    </form>
</body>
</html>
