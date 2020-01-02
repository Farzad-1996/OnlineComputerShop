<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="false" CodeFile="testing.aspx.cs" Inherits="user_testing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
<br/>

<asp:Button ID="b1" runat="server" Text="cookies store" onclick="b1_Click" />
<asp:Button ID="b2" runat="server" Text="cookies display" onclick="b2_Click" />
<asp:Button ID="b3" runat="server" Text="cookies update" onclick="b3_Click" />
<asp:Button ID="b4" runat="server" Text="cookies display using array" 
        onclick="b4_Click" />

</asp:Content>

