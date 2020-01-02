<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="view_full_order.aspx.cs" Inherits="admin_view_full_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

<asp:Repeater ID="r2" runat="server">

<HeaderTemplate>
<table border="1">
<tr style="background-color:Gray; color:white">

<td> ID </td>
<td> First Name </td>
<td> Last Name </td>
<td> Email </td>
<td> Address </td>
<td> City </td>
<td> State </td>
<td> Pincode </td>
<td> Mobile </td>

</tr>
</HeaderTemplate>

<ItemTemplate>
<tr>

<td><%# Eval("ID") %> </td>
<td><%# Eval("firstName") %> </td>
<td><%# Eval("lastName") %> </td>
<td><%# Eval("email") %> </td>
<td><%# Eval("address") %> </td>
<td><%# Eval("city") %> </td>
<td><%# Eval("state") %> </td>
<td><%# Eval("pincode") %> </td>
<td><%# Eval("mobile") %> </td>

</tr>
</ItemTemplate>

<FooterTemplate>
</table>
</FooterTemplate>

</asp:Repeater>

<br/><br/>

<asp:Repeater ID="r1" runat="server">

<HeaderTemplate>
<table border="1">
<tr style="background-color:Gray; color:white">
<td> Product Image </td>
<td> Product Name </td>
<td> Product Price </td>
<td> Product Qty </td>
</tr>
</HeaderTemplate>

<ItemTemplate>
<tr>
<td> <img src="../<%#Eval("product_images") %>" height="100" width="100" </td>
<td> <%#Eval("product_name") %> </td>
<td> <%#Eval("product_price") %> </td>
<td> <%#Eval("product_qty") %> </td>
<tr>
</ItemTemplate>

<FooterTemplate>
</table>
</FooterTemplate>

</asp:Repeater>
<asp:Label ID="l1" runat="server" Text=""> </asp:Label>
</asp:Content>

