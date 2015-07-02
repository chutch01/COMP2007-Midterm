<%@ Page Title="CourseInfomation Details" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Details.aspx.cs" Inherits="ASPMidtermSchool.CourseInfomations.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="ASPMidtermSchool.Models.CourseInfomation" DataKeyNames="CourseID"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CourseInfomation with CourseID <%: Request.QueryString["CourseID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>CourseInfomation Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CourseID</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CourseID" ID="CourseID" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CourseName</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CourseName" ID="CourseName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CourseDescription</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CourseDescription" ID="CourseDescription" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CourseCost</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CourseCost" ID="CourseCost" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

