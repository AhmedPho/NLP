<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="NLP.Tags" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="إضافة" />
        </td>
        <td colspan="4">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="أدخل أسم العلامة "></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="ربط" />
        </td>
        <td colspan="2">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="Tag" DataValueField="ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                SelectCommand="SELECT [ID], [Tag] FROM [Tags]"></asp:SqlDataSource>
        </td>
        <td colspan="2">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="ربط علامة وكلمة"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button3" runat="server" Text="إضافة" onclick="Button3_Click" />
        </td>
        <td colspan="4">
            <asp:TextBox ID="TextBox3" runat="server" Height="19px" Width="391px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="إضافة قاعدة جديدة"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label4" runat="server" Text="الكلمات"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Label ID="Label3" runat="server" Text="العلامات"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Label ID="Label6" runat="server" Text="القواعد"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="Tag" HeaderText="العلامة" SortExpression="Tag" />
                    <asp:BoundField DataField="Word" HeaderText="الكلمة" SortExpression="Word" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                SelectCommand="SELECT Tags.Tag, Words.Word FROM Tags INNER JOIN Words ON Tags.ID = Words.IDTag">
            </asp:SqlDataSource>
        </td>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="ID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Tag" HeaderText="العلامة" SortExpression="Tag" />
                    <asp:BoundField DataField="ID" HeaderText="م" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                SelectCommand="SELECT * FROM [Tags]"></asp:SqlDataSource>
        </td>
        <td colspan="2">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="Grammer" HeaderText="القاعدة" 
                        SortExpression="Grammer" />
                    <asp:BoundField DataField="ID" HeaderText="م" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                SelectCommand="SELECT * FROM [Grammers]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
