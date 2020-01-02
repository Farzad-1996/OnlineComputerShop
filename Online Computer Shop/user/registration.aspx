<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="user_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

<table>

<tr>

<td>First Name</td>
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

</tr>

<tr>

<td>Last Name</td>
<td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>

</tr>

<tr>

<td>Email</td>
<td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>

</tr>

<tr>

<td>Password</td>
<td><asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox></td>

</tr>

<tr>

<td>Address</td>
<td><asp:TextBox ID="TextBox5" runat="server" Height="67px" TextMode="MultiLine" 
        Width="120px"></asp:TextBox></td>

</tr>

<tr>

<td>City</td>
<td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>

</tr>

<tr>

<td>State</td>
<td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>

</tr>

<tr>

<td>Pincode</td>
<td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>

</tr>

<tr>

<td>Mobile</td>
<td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>

</tr>

<tr>

<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Register" 
        onclick="Button1_Click" />
</td>

</tr>

<tr>

<td colspan="2" align="center">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</td>

</tr>

</table>


</asp:Content>

