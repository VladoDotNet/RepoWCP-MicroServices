<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WFCustomerServices.aspx.cs" Inherits="WCFNorthwindEF.WFCustomerServices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
              
              <asp:View ID="View1" runat="server">
                 <h2>WCF - Windows Services with EF</h2>
                 <div>
                    Visit:
                    <a href="https://vladodotnet.wordpress.com/" target="_blank">VladoDotNet! </a>
                 </div>
                 <hr /><br />
                 <asp:Label ID="Label1" runat="server" Text="Customer name :"></asp:Label>
                 <asp:TextBox ID="txtSearching" runat="server"></asp:TextBox>
                 <asp:Button ID="btnSearching" runat="server" Text="Search..." 
                    OnClick="btnSearching_Click" />
                 <br /><br />
                 <asp:Label ID="lblCustomer" runat="server" Text=""></asp:Label>
                 <br />
                 <asp:Label ID="lblCountry" runat="server" Text=""></asp:Label>
                 <br />
                  <h3>Customer list</h3>
                 <p>Please install de Northwind dbs. Script in GibHub </p>
                 <asp:Label ID="lblRegs" runat="server" Text="Label"></asp:Label>
                 <hr />
                 <asp:GridView ID="GridCustomer" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" 
                    ShowHeaderWhenEmpty="True" Width="534px"
                    AllowPaging="true"
                    OnPageIndexChanging="OnPageIndexChanging" 
                    PageSize="10">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                 </asp:GridView>
              </asp:View>
           </asp:MultiView>

        </div>
    </form>
</body>
</html>

<%-- ANATR --%>
