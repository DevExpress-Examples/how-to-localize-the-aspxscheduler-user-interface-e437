﻿Imports System
Imports DevExpress.XtraScheduler
Imports DevExpress.Web.ASPxScheduler
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Private ReadOnly Property Storage() As ASPxSchedulerStorage
        Get
            Return ASPxScheduler1.Storage
        End Get
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

        DataHelper.SetupMappings(Me.ASPxScheduler1)
        ResourceFiller.FillResources(Me.ASPxScheduler1.Storage, 3)
        DataHelper.ProvideRowInsertion(ASPxScheduler1, appointmentDataSource)

        ASPxScheduler1.AppointmentDataSource = appointmentDataSource
        ASPxScheduler1.DataBind()

        ASPxScheduler1.GroupType = SchedulerGroupType.Resource

    End Sub
    'Initializing ObjectDataSource
    Protected Sub appointmentsDataSource_ObjectCreated(ByVal sender As Object, ByVal e As ObjectDataSourceEventArgs)
        e.ObjectInstance = New CustomEventDataSource(GetCustomEvents())
    End Sub
    Private Function GetCustomEvents() As CustomEventList

        Dim events_Renamed As CustomEventList = TryCast(Session("ListBoundModeObjects"), CustomEventList)
        If events_Renamed Is Nothing Then
            events_Renamed = New CustomEventList()
            Session("ListBoundModeObjects") = events_Renamed
        End If
        Return events_Renamed
    End Function

    Private Sub SetAppointmentId(ByVal sender As Object, ByVal e As PersistentObjectCancelEventArgs)

        Dim storage_Renamed As ASPxSchedulerStorage = DirectCast(sender, ASPxSchedulerStorage)
        Dim apt As Appointment = CType(e.Object, Appointment)
        storage_Renamed.SetAppointmentId(apt, apt.GetHashCode())
    End Sub
End Class
