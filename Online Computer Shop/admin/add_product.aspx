<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="add_product.aspx.cs" Inherits="admin_add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
<h3> Add Product Page </h3>

<table>
<tr>
<td> Product Name </td>
<td> <asp:TextBox ID="t1" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td> Product Description </td>
<td> <asp:TextBox ID="t2" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td> Product Price </td>
<td> <asp:TextBox ID="t3" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td> Product Quantity </td>
<td> <asp:TextBox ID="t4" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td> Product Image </td>
<td> <asp:FileUpload ID="f1" runat="server" /> </td>
</tr>

<tr>
<td> Select Category </td>
<td>
    <asp:DropDownList ID="dd" runat="server">
    </asp:DropDownList>
</td>
</tr>

<tr>
<td colspan="2" align="center"> 
<asp:Button ID="b1" runat="server" Text="upload" onclick="b1_Click" />
</td>
</tr>

</table>

</asp:Content>

