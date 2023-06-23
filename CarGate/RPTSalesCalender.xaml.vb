Imports System.Data

Public Class RPTSalesCalender
    Public MyLinkFile As Integer = 1
    Dim bm As New BasicMethods
    Dim dt As New DataTable
    Public Flag As Integer = 0
    Public RptFlag As Integer = 0
    Public Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles Button2.Click

        Dim rpt As New ReportViewer
        rpt.paraname = New String() {"@StoreId", "@Month", "@Year", "Header"}
        rpt.paravalue = New String() {Val(StoreId.Text), Val(txtMonth.Text), Val(txtYear.Text), CType(Parent, Page).Title.Trim}
        rpt.Rpt = "MonthlySales.rpt"
        rpt.Show()
    End Sub

    Private Sub UserControl_Loaded(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles MyBase.Loaded
        If bm.TestIsLoaded(Me, True) Then Return
        LoadResource()
        bm.Addcontrol_MouseDoubleClick({StoreId})
        Dim MyNow As DateTime = bm.MyGetDate()
        'FromDate.SelectedDate = New DateTime(MyNow.Year, MyNow.Month, MyNow.Day, 0, 0, 0)
        txtMonth.Text = Now.Month
        txtYear.Text = Now.Year
    End Sub

    Dim lop As Boolean = False



    Private Sub LoadResource()

    End Sub

    Private Sub StoreId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles StoreId.KeyUp
        If bm.ShowHelp("Stores", StoreId, StoreName, e, "select cast(Id as varchar(100)) Id,Name from Fn_EmpStores(" & Md.UserName & ")") Then
            StoreId_LostFocus(StoreId, Nothing)
        End If
    End Sub

    Private Sub StoreId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles StoreId.LostFocus
        bm.LostFocus(StoreId, StoreName, "select Name from Fn_EmpStores(" & Md.UserName & ") where Id=" & StoreId.Text.Trim())
        LoadData()
    End Sub

    Sub LoadData() Handles txtMonth.TextChanged, txtYear.TextChanged
        Dim month As Integer = Val(txtMonth.Text)
        Dim year As Integer = Val(txtYear.Text)

        If month < 1 OrElse month > 12 OrElse year = 0 Then
            Return
        End If
        dt = bm.ExecuteAdapter("getMonthlySales", {"StoreId", "Month", "Year"}, {Val(StoreId.Text), Val(txtMonth.Text), Val(txtYear.Text)})
        MyGrid.Children.Clear()
        Dim width As Decimal = (MyGrid.ActualWidth / 7)
        Dim height As Decimal = (MyGrid.ActualHeight / 7)
        For i = 1 To 7
            Dim x As New Button
            bm.SetStyle(x, width - 20, 80)
            x.Margin = New Thickness((i - 1) * width + 10, 0, 0, 0)
            x.HorizontalAlignment = HorizontalAlignment.Left
            x.VerticalAlignment = VerticalAlignment.Top
            x.Content = WeekdayName(i,, FirstDayOfWeek.Saturday)
            x.FontSize = 24
            MyGrid.Children.Add(x)
        Next

        Dim count As Integer = DateTime.DaysInMonth(year, month)
        Dim r As Integer = 1
        Dim t1 As Decimal = 0
        Dim t2 As Decimal = 0
        For i = 1 To count
            Dim d As Integer = Weekday(New DateTime(year, month, i), FirstDayOfWeek.Saturday)
            If i > 1 AndAlso d = 1 Then r += 1
            Dim x As New Button
            bm.SetStyle(x, width - 20, 80)
            x.VerticalContentAlignment = VerticalAlignment.Stretch
            x.HorizontalContentAlignment = VerticalAlignment.Stretch
            x.Margin = New Thickness((d - 1) * width + 10, r * height, 0, 0)
            x.HorizontalAlignment = HorizontalAlignment.Left
            x.VerticalAlignment = VerticalAlignment.Top
            'x.Content = i & vbCrLf & "الإجمالي: " & dt.Rows(i - 1)(1) & vbCrLf & "العدد: " & dt.Rows(i - 1)(2)
            x.Content = New ButtonMonthSample With {.Amount = dt.Rows(i - 1)(1), .Count = dt.Rows(i - 1)(2), .Day = i}
            MyGrid.Children.Add(x)

            If dt.Rows(i - 1)(1) <> 0 Then
                t1 += dt.Rows(i - 1)(1)
                t2 += 1
            End If
        Next

        Total.Text = t1
        Avg.Text = 0
        If t2 > 0 Then
            Avg.Text = t1 / t2
        End If
    End Sub

End Class