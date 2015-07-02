<%@ Page Title="CourseInfomationList" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Default.aspx.cs" Inherits="ASPMidtermSchool.CourseInfomations.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>CourseInfomations List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="CourseID" 
			ItemType="ASPMidtermSchool.Models.CourseInfomation"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for CourseInfomations
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="CourseID" CommandName="Sort" CommandArgument="CourseID" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CourseName" CommandName="Sort" CommandArgument="CourseName" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CourseDescription" CommandName="Sort" CommandArgument="CourseDescription" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CourseCost" CommandName="Sort" CommandArgument="CourseCost" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="CourseID" ID="CourseID" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CourseName" ID="CourseName" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CourseDescription" ID="CourseDescription" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CourseCost" ID="CourseCost" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/CourseInfomations/Details", Item.CourseID) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/CourseInfomations/Edit", Item.CourseID) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/CourseInfomations/Delete", Item.CourseID) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

