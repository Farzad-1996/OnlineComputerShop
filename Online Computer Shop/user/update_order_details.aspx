<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="update_order_details.aspx.cs" Inherits="user_update_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

<table>


<tr>
<td> First Name </td>
<td> <asp:TextBox ID="t1" runat="server"> </asp:TextBox> </td>
</tr>

<tr>
<td> Last Name </td>
<td> <asp:TextBox ID="t2" runat="server"> </asp:TextBox> </td>
</tr>

<tr>
<td> Address </td>
<td> <asp:TextBox ID="t3" runat="server" Height="58px" TextMode="MultiLine" 
        Width="120px"></asp:TextBox> </td>
</tr>

<tr>
<td> City </td>
<td> <asp:TextBox ID="t4" runat="server"> </asp:TextBox> </td>
</tr>

<tr>
<td> State </td>
<td> <asp:TextBox ID="t5" runat="server"> </asp:TextBox> </td>
</tr>

<tr>
<td> Mobile </td>
<td> <asp:TextBox ID="t6" runat="server"> </asp:TextBox> </td>
</tr>

<tr>
<td colspan="2" align="center"> 
    <asp:Button ID="b1" runat="server" Text="Update and Continue" 
        onclick="b1_Click" />
</td>
</tr>

</table>

</asp:Content>

