﻿<%@ Control Language="vb" AutoEventWireup="true" Inherits="CustomForms_ReminderForm" CodeFile="ReminderForm_v10_2.it.ascx.vb" %>
<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.0.0, Culture=neutral, PublicKeyToken=79868b8147b5eae4" Namespace="DevExpress.Web"
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