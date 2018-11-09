<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="MasterColumnsOnDetailPage._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
	Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dxw" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
	Namespace="DevExpress.Web.ASPxTabControl" TagPrefix="dxtc" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" KeyFieldName="ID">
			<Columns>
				<dxwgv:GridViewDataTextColumn FieldName="Category" VisibleIndex="0">
				</dxwgv:GridViewDataTextColumn>
			</Columns>
			<Templates>
				<DetailRow>
		<dxtc:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0">
			<TabPages>
				<dxtc:TabPage Text="Description">
					<ContentCollection>
						<dxw:ContentControl runat="server"><dxe:ASPxLabel runat="server" Text='<%#Eval("Description")%>' ID="ASPxLabel1"></dxe:ASPxLabel>
 </dxw:ContentControl>
					</ContentCollection>
				</dxtc:TabPage>
			</TabPages>
		</dxtc:ASPxPageControl>
				</DetailRow>
			</Templates>
			<SettingsDetail ShowDetailRow="True" />
		</dxwgv:ASPxGridView>
		&nbsp;
	</div>
	</form>
</body>
</html>
