<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="GridView_ImageUrlFormatString" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A" Namespace="DevExpress.Web.ASPxGridView"
	TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxwgv:aspxgridview id="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
			<Columns>
				<dxwgv:GridViewDataTextColumn FieldName="id" VisibleIndex="0">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="Width" VisibleIndex="1">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataTextColumn FieldName="Height" VisibleIndex="2">
				</dxwgv:GridViewDataTextColumn>
				<dxwgv:GridViewDataImageColumn FieldName="FileName" VisibleIndex="3" Caption="Image">
					<PropertiesImage ImageUrlFormatString="Images/{0}">
					</PropertiesImage>
				</dxwgv:GridViewDataImageColumn>
			</Columns>
		</dxwgv:aspxgridview>
		<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Images.xml">
		</asp:XmlDataSource>

	</div>
	</form>
</body>
</html>
