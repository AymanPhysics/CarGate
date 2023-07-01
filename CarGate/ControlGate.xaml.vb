Imports System.ComponentModel
Imports System.Data
Imports System.IO.Ports
Imports NPOI.SS.Formula.Functions
Imports Syncfusion.XlsIO

Public Class ControlGate

    Dim dt As New DataTable
    Dim bm As New BasicMethods
    Dim MyButtons() As Button = {}

    Public Flag As Integer = 0
    WithEvents bg As New BackgroundWorker

    Private Sub BasicForm3_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return
        AddHandler bg.DoWork, AddressOf bg_DoWork
        AddHandler bg.RunWorkerCompleted, AddressOf bg_RunWorkerCompleted
        LoadCarTypes()
        'btnOpen.Visibility = Visibility.Hidden
        btnClose.Visibility = Visibility.Hidden

        Send("2")
    End Sub

    Private Sub LoadCarTypes()
        Try
            dt = bm.ExecuteAdapter("select * from CarTypes")
            For i As Integer = 0 To dt.Columns.Count - 1
                Dim btn As New Button With {.Height = 30, .Margin = New Thickness(0, 0, 0, 10)}
                ReDim Preserve MyButtons(MyButtons.Length + 1)
                MyButtons(i) = btn
                'Dim d = DataGridView1.Columns(i).ActualWidth
                'txt.Width = d
                'txt.SetResourceReference(TextBox.WidthProperty, Val(txt.Text))

                btn.Width = 300
                btn.Height = 120

                'CurrentActualWidth += DataGridView1.Columns(i).ActualWidth
                btn.Content = dt.Rows(i)("Name")
                btn.Tag = dt.Rows(i)("Price")
                btn.TabIndex = i
                btn.HorizontalAlignment = HorizontalAlignment.Center
                btn.VerticalAlignment = VerticalAlignment.Top
                SC.Children.Add(btn)
                AddHandler btn.Click, AddressOf btn_Click
            Next
        Catch
        End Try
    End Sub
    Dim CurrentTitle As String = ""
    Dim CurrentPrice As Decimal = 0
    Private Sub btn_Click(sender As Object, e As RoutedEventArgs)
        lblCarType.Content = sender.content & " (" & sender.Tag & ")"
        CurrentTitle = sender.content
        CurrentPrice = sender.Tag
    End Sub

    Private Sub bg_DoWork(sender As Object, e As DoWorkEventArgs)
        Threading.Thread.Sleep(1000)
    End Sub

    Private Sub bg_RunWorkerCompleted(sender As Object, e As RunWorkerCompletedEventArgs)
        lbl.Content = ""
    End Sub

    Private Sub btnPrintAll_Click(sender As Object, e As RoutedEventArgs) Handles btnPrintAll.Click
        If CurrentTitle = "" Then
            bm.ShowMSG("برجاء تحديد نوع السيارة")
            Return
        End If
        btnOpen_Click(Nothing, Nothing)

    End Sub

    Private Sub btnOpen_Click(sender As Object, e As RoutedEventArgs) Handles btnOpen.Click
        Send("1")
    End Sub

    Private Sub btnClose_Click(sender As Object, e As RoutedEventArgs) Handles btnClose.Click
        Send("2")
    End Sub

    Sub Send(str As String)
        Try
            Dim portNames As String() = SerialPort.GetPortNames()
            If portNames.Length = 0 Then
                SetLbl("No serial ports found.")
            Else
                For Each portName As String In portNames
                    Dim myserialPort = New SerialPort(portName, 9600, Parity.None, 8, StopBits.One)
                    Try
                        myserialPort.Open()
                        myserialPort.Write(str)
                        If str = "1" Then
                            SetLbl("Openned")
                            'ElseIf str = "2" Then
                            '    SetLbl("Closed")
                        End If
                        myserialPort.ReadTimeout = 1000
                        Dim Data As String = myserialPort.ReadLine
                        If str = "1" Then
                            If Data = "1" & vbCr Then
                                If bm.ExecuteNonQuery("insert ControlGate(UserName,Title,Price)values(" & Md.UserName & ",'" & CurrentTitle.Replace(",", "''") & "'," & CurrentPrice & ")") Then
                                    Dim rpt As New ReportViewer
                                    'rpt.Header = CType(Parent, Window).Title
                                    rpt.paraname = New String() {"Price", "Title"}
                                    rpt.paravalue = New String() {CurrentPrice, CurrentTitle}
                                    rpt.Rpt = "PrintCarGate.rpt"
                                    'rpt.Show()
                                    rpt.Print()
                                    'SetLbl(CurrentPrice)
                                End If
                            End If
                        End If
                    Catch ex As Exception
                        SetLbl(ex.Message & vbCrLf & str)
                    Finally
                        myserialPort.Close()
                    End Try
                Next
            End If
        Catch ex As Exception
            SetLbl(ex.Message)
        End Try
    End Sub

    Sub SetLbl(txt)
        lbl.Content = txt
        If Not bg.IsBusy Then bg.RunWorkerAsync()
    End Sub
End Class
