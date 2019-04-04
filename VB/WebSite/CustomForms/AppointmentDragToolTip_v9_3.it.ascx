<%@ Control Language="vb" AutoEventWireup="true" Inherits="CustomForms_AppointmentDragToolTip" CodeFile="AppointmentDragToolTip_v9_3.it.ascx.vb" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.3" Namespace="DevExpress.Web.ASPxEditors"
	TagPrefix="dxe" %>

<div style="white-space:nowrap;">
	<dxe:ASPxLabel ID="lblInterval" runat="server" Text="CustomDragAppointmentTooltip" EnableClientSideAPI="true">
		</dxe:ASPxLabel>
	<br />
	<dxe:ASPxLabel ID="lblInfo" runat="server" 
		Text="Premi ESC per annullare l'operazione" EnableClientSideAPI="true"></dxe:ASPxLabel>
</div>

<script id="dxss_ASPxClientAppointmentDragTooltip" type="text/javascript"><!--
	ASPxClientAppointmentDragTooltip = _aspxCreateClass(ASPxClientToolTipBase, {
		CalculatePosition: function(bounds) {
			return new ASPxClientPoint(bounds.GetLeft(), bounds.GetTop() - bounds.GetHeight());
		},
		Update: function (toolTipData) {
			var stringInterval = this.GetToolTipContent(toolTipData);
			var oldText = this.controls.lblInterval.GetText();
			if (oldText != stringInterval)
				this.controls.lblInterval.SetText(stringInterval);
		},
		GetToolTipContent: function(toolTipData) {    
			var interval = toolTipData.GetInterval();
			return this.ConvertIntervalToString(interval);
		}
	});
//--></script>