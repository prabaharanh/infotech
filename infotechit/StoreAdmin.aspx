<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StoreAdmin.aspx.cs" Inherits="infotechit.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="height: 38px">Welcome Admin</td>
        </tr>
        <tr>
            <td style="height: 38px">
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" BorderColor="#3399FF" BorderStyle="Double" ForeColor="Black" OnClick="Button1_Click" Text="Change" />
                        </td>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td style="width: 295px">Enter the ID </td>
                                    <td>
                                        <asp:TextBox ID="product_id" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 295px">Enter Title </td>
                                    <td>
                                        <asp:TextBox ID="product_title" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 295px">Enter Description</td>
                                    <td>
                                        <asp:TextBox ID="product_description" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 295px">Enter Price</td>
                                    <td>
                                        <asp:TextBox ID="product_price" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 295px">Enter the Stock Count</td>
                                    <td>
                                        <asp:TextBox ID="product_count" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 295px">Upload Image</td>
                                    <td>
                                        <asp:FileUpload id="imagefile" type="file" runat="server" ></asp:FileUpload></td>
                                </tr>
                                <tr>
                                    <td style="width: 295px">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnAdd" runat="server" BorderColor="#3399FF" BorderStyle="Double" ForeColor="Black" OnClick="Button1_Click" Text="Add Product" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 295px; height: 38px"></td>
                                    <td style="height: 38px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
                                                <asp:BoundField DataField="product_title" HeaderText="product_title" SortExpression="product_title" />
                                                <asp:BoundField DataField="product_description" HeaderText="product_description" SortExpression="product_description" />
                                                <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                                                <asp:BoundField DataField="product_stock" HeaderText="product_stock" SortExpression="product_stock" />
                                                <asp:BoundField DataField="product_image" HeaderText="product_image" SortExpression="product_image" />
                                                <asp:CommandField ShowEditButton="True" />
                                                <asp:CommandField ShowDeleteButton="True" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbinfotech %>" DeleteCommand="DELETE FROM [tbProducts] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [tbProducts] ([product_id], [product_title], [product_description], [product_price], [product_stock], [product_image]) VALUES (@product_id, @product_title, @product_description, @product_price, @product_stock, @product_image)" SelectCommand="SELECT * FROM [tbProducts]" UpdateCommand="UPDATE [tbProducts] SET [product_title] = @product_title, [product_description] = @product_description, [product_price] = @product_price, [product_stock] = @product_stock, [product_image] = @product_image WHERE [product_id] = @product_id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="product_id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="product_id" Type="Int32" />
                                                <asp:Parameter Name="product_title" Type="String" />
                                                <asp:Parameter Name="product_description" Type="String" />
                                                <asp:Parameter Name="product_price" Type="Int32" />
                                                <asp:Parameter Name="product_stock" Type="Int32" />
                                                <asp:Parameter Name="product_image" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="product_title" Type="String" />
                                                <asp:Parameter Name="product_description" Type="String" />
                                                <asp:Parameter Name="product_price" Type="Int32" />
                                                <asp:Parameter Name="product_stock" Type="Int32" />
                                                <asp:Parameter Name="product_image" Type="String" />
                                                <asp:Parameter Name="product_id" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
