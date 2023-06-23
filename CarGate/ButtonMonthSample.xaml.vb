Imports System.Data
Imports Microsoft.Office.Interop
Imports System.IO

Public Class ButtonMonthSample

    Public Amount As String
    Public Count As String
    Public Day As String
    Private Sub UserControl_Loaded(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles MyBase.Loaded
        lblAmount.Content = Amount
        lblCount.Content = Count
        lblDay.Content = Day
    End Sub


End Class