﻿<%--
{************************************************************************************}
{                                                                                    }
{   DO NOT MODIFY THIS FILE!                                                         }
{                                                                                    }
{   It will be overwritten without prompting when a new version becomes              }
{   available. All your changes will be lost.                                        }
{                                                                                    }
{   This file contains the default template and is required for the form             }
{   rendering. Improper modifications may result in incorrect behavior of            }
{   the appointment form.                                                            }
{                                                                                    }
{   In order to create and use your own custom template, perform the following       }
{   steps:                                                                           }
{       1. Save a copy of this file with a different name in another location.       }
{       2. Specify the file location as the 'OptionsForms.AppointmentFormTemplateUrl'}
{          property of the ASPxScheduler control.                                    }
{       3. If you need custom fields to be displayed and processed, you should       }
{          accomplish steps 4-9; otherwise, go to step 10.                           }
{       4. Create a class, derived from the AppointmentFormTemplateContainer,        }
{          containing custom properties. This class definition can be located        }
{          within a class file in the App_Code folder.                               }
{       5. Replace AppointmentFormTemplateContainer references in the template       }
{          page with the name of the class you've created in step 4.                 }
{       6. Handle the AppointmentFormShowing event to create an instance of the      }
{          template container class, defined in step 4, and specify it as the        }
{          destination container instead of the default one.                         }
{       7. Define a class, which inherits from the                                   }
{          DevExpress.Web.ASPxScheduler.Internal.AppointmentFormController.          }
{          This class provides data exchange between the form and the appointment.   }
{          You should override ApplyCustomFieldsValues() method of the base class.   }
{       8. Define a class, which inherits from the                                   }
{          DevExpress.Web.ASPxScheduler.Internal.AppointmentFormSaveCallbackCommand. }
{          This class creates an instance of the AppointmentFormController inheritor }
{          (defined in step 7) via the CreateAppointmentFormController method and    }
{          overrides the AssignControllerValues method  of the base class to collect }
{          user data from the form's editors.                                        }
{       9. Handle the BeforeExecuteCallbackCommand event. The event handler code     }
{          should create an instance of the class defined in step 8, and specify it  }
{          as the destination command instead of the default one.                    }
{      10. Modify the overall appearance of the page and its layout.                 }
{                                                                                    }
{************************************************************************************}
--%>

<%@ Control Language="C#" AutoEventWireup="true" Inherits="AppointmentForm" CodeFile="AppointmentForm_v8_3.de-DE.ascx.cs" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.3" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v8.3" Namespace="DevExpress.Web.ASPxScheduler.Controls" TagPrefix="dxsc" %>
<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v8.3" Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>

<table class="dxscAppointmentForm" cellpadding="0" cellspacing="0" style="width: 100%; height: 230px;">
    <tr>
        <td class="dxscDoubleCell" colspan="2">
            <table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="dxscLabelCell">
                        <dxe:ASPxLabel ID="lblSubject" runat="server" AssociatedControlID="tbSubject" Text="Betreff:">
                        </dxe:ASPxLabel>
                    </td>
                    <td class="dxscControlCell">
                        <dxe:ASPxTextBox ClientInstanceName="_dx" ID="tbSubject" runat="server" Width="100%" Text='<%# ((AppointmentFormTemplateContainer)Container).Appointment.Subject %>' />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr> 
        <td class="dxscSingleCell">
            <table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="dxscLabelCell">
                        <dxe:ASPxLabel ID="lblLocation" runat="server" AssociatedControlID="tbLocation" Text="Ort:">
                        </dxe:ASPxLabel>
                    </td>
                    <td class="dxscControlCell">
                        <dxe:ASPxTextBox ClientInstanceName="_dx" ID="tbLocation" runat="server" Width="100%" Text='<%# ((AppointmentFormTemplateContainer)Container).Appointment.Location %>' />
                    </td>
                </tr>
            </table>
        </td>
        <td class="dxscSingleCell">
            <table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="dxscLabelCell" style="padding-left: 25px;">
                        <dxe:ASPxLabel ID="lblLabel" runat="server" AssociatedControlID="edtLabel" Text="Beschriftung:">
                        </dxe:ASPxLabel>
                    </td>
                    <td class="dxscControlCell">
                        <dxe:ASPxComboBox ClientInstanceName="_dx" ID="edtLabel" runat="server" Width="100%" DataSource='<%# ((AppointmentFormTemplateContainer)Container).LabelDataSource %>' />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="dxscSingleCell">
            <table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="dxscLabelCell">
                        <dxe:ASPxLabel ID="lblStartDate" runat="server" AssociatedControlID="edtStartDate" Text="Beginnt um:" Wrap="false">
                        </dxe:ASPxLabel>
                    </td>
                    <td class="dxscControlCell">
                        <dxe:ASPxDateEdit ClientInstanceName="_dx" ID="edtStartDate" runat="server" Width="100%" Date='<%# ((AppointmentFormTemplateContainer)Container).Start %>' EditFormat="DateTime" />
                    </td>
                </tr>
            </table>
        </td>
        <td class="dxscSingleCell">
            <table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="dxscLabelCell" style="padding-left: 25px;">
                        <dxe:ASPxLabel runat="server" ID="lblEndDate" Text="Endet um:" Wrap="false" AssociatedControlID="edtEndDate"/>
                    </td>
                    <td class="dxscControlCell">
                        <dxe:ASPxDateEdit id="edtEndDate" runat="server" ClientInstanceName="_dx" Date='<%# ((AppointmentFormTemplateContainer)Container).End %>'
                            EditFormat="DateTime" Width="100%">
                        </dxe:ASPxDateEdit>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="dxscSingleCell">
            <table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="dxscLabelCell">
                        <dxe:ASPxLabel ID="lblStatus" runat="server" AssociatedControlID="edtStatus" Text="Anzeigen als:" Wrap="false">
                        </dxe:ASPxLabel>
                    </td>
                    <td class="dxscControlCell">
                        <dxe:ASPxComboBox ClientInstanceName="_dx" ID="edtStatus" runat="server" Width="100%" DataSource='<%# ((AppointmentFormTemplateContainer)Container).StatusDataSource %>' />
                    </td>
                </tr>
            </table>
        </td>
        <td class="dxscSingleCell" style="padding-left: 22px;">
            <table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="width: 20px; height: 20px;">
                        <dxe:ASPxCheckBox ClientInstanceName="_dx" ID="chkAllDay" runat="server" Checked='<%# ((AppointmentFormTemplateContainer)Container).Appointment.AllDay %>' />
                    </td>
                    <td style="padding-left: 2px;">
                        <dxe:ASPxLabel ID="lblAllDay" runat="server" Text="Ganztägig" AssociatedControlID="chkAllDay" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
<% if(CanShowReminders) { %>
        <td class="dxscSingleCell">
<% } else { %>
        <td class="dxscDoubleCell" colspan="2">
<% } %>
            <table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="dxscLabelCell">
                        <dxe:ASPxLabel ID="lblResource" runat="server" AssociatedControlID="edtResource" Text="Ressource:">
                        </dxe:ASPxLabel>
                    </td>
                    <td class="dxscControlCell">
                        <dxe:ASPxComboBox ClientInstanceName="_dx" ID="edtResource" runat="server" Width="100%" DataSource='<%# ((AppointmentFormTemplateContainer)Container).ResourceDataSource %>' Enabled='<%# ((AppointmentFormTemplateContainer)Container).CanEditResource %>' />
                    </td>
                </tr>
            </table>
        </td>
<% if(CanShowReminders) { %>
        <td class="dxscSingleCell">
            <table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="dxscLabelCell" style="padding-left: 22px;">
                        <table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 20px; height: 20px;">
                                    <dxe:ASPxCheckBox ClientInstanceName="_dx" ID="chkReminder" runat="server"> 
                                        <ClientSideEvents CheckedChanged="function(s, e) { OnChkReminderCheckedChanged(s, e); }" />
                                    </dxe:ASPxCheckBox>
                                </td>
                                <td style="padding-left: 2px;">
                                    <dxe:ASPxLabel ID="lblReminder" runat="server" Text="Erinnerung" AssociatedControlID="chkReminder" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="dxscControlCell" style="padding-left: 3px">
                        <dxe:ASPxComboBox  ID="cbReminder" ClientInstanceName="_dxAppointmentForm_cbReminder" runat="server" Width="100%" DataSource='<%# ((AppointmentFormTemplateContainer)Container).ReminderDataSource %>' />
                    </td>
                </tr>
            </table>
        </td>
<% } %>
    </tr>
    <tr>
        <td class="dxscDoubleCell" colspan="2" style="height: 90px;">
            <dxe:ASPxMemo ClientInstanceName="_dx" ID="tbDescription" runat="server" Width="100%" Rows="6" Text='<%# ((AppointmentFormTemplateContainer)Container).Appointment.Description %>' />
        </td>
    </tr>
</table>
                        
<dxsc:AppointmentRecurrenceForm ID="AppointmentRecurrenceForm1" runat="server"
    IsRecurring='<%# ((AppointmentFormTemplateContainer)Container).Appointment.IsRecurring %>' 
    DayNumber='<%# ((AppointmentFormTemplateContainer)Container).RecurrenceDayNumber %>' 
    End='<%# ((AppointmentFormTemplateContainer)Container).RecurrenceEnd %>' 
    Month='<%# ((AppointmentFormTemplateContainer)Container).RecurrenceMonth %>' 
    OccurrenceCount='<%# ((AppointmentFormTemplateContainer)Container).RecurrenceOccurrenceCount %>' 
    Periodicity='<%# ((AppointmentFormTemplateContainer)Container).RecurrencePeriodicity %>' 
    RecurrenceRange='<%# ((AppointmentFormTemplateContainer)Container).RecurrenceRange %>' 
    Start='<%# ((AppointmentFormTemplateContainer)Container).RecurrenceStart %>' 
    WeekDays='<%# ((AppointmentFormTemplateContainer)Container).RecurrenceWeekDays %>' 
    WeekOfMonth='<%# ((AppointmentFormTemplateContainer)Container).RecurrenceWeekOfMonth %>' 
    RecurrenceType='<%# ((AppointmentFormTemplateContainer)Container).RecurrenceType %>'
    IsFormRecreated='<%# ((AppointmentFormTemplateContainer)Container).IsFormRecreated %>' >
</dxsc:AppointmentRecurrenceForm>
                   
<table cellpadding="0" cellspacing="0" style="width: 100%; height: 35px;">
    <tr>
        <td style="width: 100%; height: 100%;" align="center">
            <table style="height: 100%;">
                <tr>
                    <td>
                        <dxe:ASPxButton runat="server" ClientInstanceName="_dx" ID="btnOk" Text="OK" UseSubmitBehavior="false" AutoPostBack="false" 
                            EnableViewState="false" Width="91px"/>
                    </td>
                    <td>
                        <dxe:ASPxButton runat="server" ClientInstanceName="_dx" ID="btnCancel" Text="Abbrechen" UseSubmitBehavior="false" AutoPostBack="false" EnableViewState="false" 
                            Width="91px" CausesValidation="False" />
                    </td>
                    <td>
                        <dxe:ASPxButton runat="server" ClientInstanceName="_dx" ID="btnDelete" Text="Löschen" UseSubmitBehavior="false"
                            AutoPostBack="false" EnableViewState="false" Width="91px"
                            Enabled='<%# ((AppointmentFormTemplateContainer)Container).CanDeleteAppointment %>'
                            CausesValidation="False" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table cellpadding="0" cellspacing="0" style="width: 100%;">
    <tr>
        <td style="width: 100%;" align="left">
            <dxsc:ASPxSchedulerStatusInfo runat="server" ID="schedulerStatusInfo" Priority="1" MasterControlId='<%# ((DevExpress.Web.ASPxScheduler.AppointmentFormTemplateContainer)Container).ControlId %>' />
        </td>
    </tr>
</table>
<script id="dxss_ASPxSchedulerAppoinmentForm" type="text/javascript">
    function OnChkReminderCheckedChanged(s, e) {
        var isReminderEnabled = s.GetValue();
        if (isReminderEnabled)
            _dxAppointmentForm_cbReminder.SetSelectedIndex(3);
        else
            _dxAppointmentForm_cbReminder.SetSelectedIndex(-1);
            
        _dxAppointmentForm_cbReminder.SetEnabled(isReminderEnabled);
        
    }
</script>