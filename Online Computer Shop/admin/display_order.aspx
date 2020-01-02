<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="display_order.aspx.cs" Inherits="admin_display_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

<asp:Repeater ID="r1" runat="server">

<HeaderTemplate>
<table border="1">
<tr style="background-color:Gray; color:white">

<td> ID </td>
<td> First Name </td>
<td> Last Name </td>
<td> City </td>
<td> State </td>
<td> Pincode </td>
<td> View Full Order </td>

</tr>
</HeaderTemplate>

<ItemTemplate>
<tr>

<td><%# Eval("ID") %> </td>
<td><%# Eval("firstName") %> </td>
<td><%# Eval("lastName") %> </td>
<td><%# Eval("city") %> </td>
<td><%# Eval("state") %> </td>
<td><%# Eval("pincode") %> </td>
<td> <a href="view_full_order.aspx?id=<%#Eval("ID") %>"> View Full Order </a> </td>

</tr>
</ItemTemplate>

<FooterTemplate>
</table>
</FooterTemplate>

</asp:Repeater>

</asp:Content>

