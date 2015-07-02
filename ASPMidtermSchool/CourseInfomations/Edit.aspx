<%@ Page Title="CourseInfomationEdit" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="ASPMidtermSchool.CourseInfomations.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="ASPMidtermSchool.Models.CourseInfomation" DefaultMode="Edit" DataKeyNames="CourseID"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CourseInfomation with CourseID <%: Request.QueryString["CourseID"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit CourseInfomation</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="CourseName" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseDescription" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseCost" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

