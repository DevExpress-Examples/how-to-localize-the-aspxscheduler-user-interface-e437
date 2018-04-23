<%@ Control Language="vb" AutoEventWireup="true" Inherits="CustomForms_ReminderForm" CodeFile="ReminderForm_v10_1.it.ascx.vb" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.1, Version=10.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dxe" %>

<table width="100%" cellpadding="0" cellspacing="0" style="padding-bottom:15px;">
	<tr><td> 
		 <dxe:ASPxListBox ID="lbItems" runat="server" Width="100%" style="padding-bottom:15px;"></dxe:ASPxListBox>
	</td></tr>
</table>
<table width="100%" cellpadding="0" cellspacing="0">
	<tr>
		<td style="width:100%;"><dxe:ASPxButton ID="btnDismissAll" runat="server" 
				Text="Elimina tutti" AutoPostBack="false"></dxe:ASPxButton></td>
		<td style="width:80px;" align="right"><dxe:ASPxButton ID="btnDismiss" 
				runat="server" Text="Elimina" Width="80px" AutoPostBack="false"></dxe:ASPxButton></td>
	</tr>
	<tr>
		<td colspan="2" style="padding:8px 0 4px 0;"><dxe:ASPxLabel ID="lblClickSnooze" 
				runat="server" 
				Text="Fare click su Posponi per rivisualizzare il promemoria tra:"></dxe:ASPxLabel></td>
	</tr>
	<tr>
		<td style="width:100%;padding-right:20px;"><dxe:ASPxComboBox ID="cbSnooze" runat="server" Width="100%">
		</dxe:ASPxComboBox></td>
		<td style="width:80px;"><dxe:ASPxButton ID="btnSnooze" runat="server" 
				Text="Posponi" Width="80px" AutoPostBack="false"></dxe:ASPxButton></td>
	</tr>
</table>