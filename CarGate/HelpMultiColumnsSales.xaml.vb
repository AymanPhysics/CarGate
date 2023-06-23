Imports System.Data
Imports System.Drawing

Public Class HelpMultiColumnsSales
    Dim bm As New BasicMethods
    Public Statement As String = ""
    Dim MyTextBoxes() As Controls.TextBox = {}
    Dim MyTextBoxes2() As Controls.TextBox = {}

    Dim dt As New DataTable
    Dim dt2 As New DataTable
    Dim dv As New DataView
    Dim dv2 As New DataView
    Public Header As String = ""
    Public LinkFile As Integer
    Public Sub Window_Loaded(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles MyBase.Loaded
        If bm.TestIsLoaded(Me) Then Return
        LoadResource()
        Banner1.StopTimer = True
        Banner1.Header = Header
        dt = bm.ExecuteAdapter(Statement)
        dt.TableName = "tbl"
        DataGridView1.Foreground = System.Windows.Media.Brushes.Black
        dv.Table = dt
        If Not DataGridView1.ItemsSource Is Nothing Then
            DataGridView1.ItemsSource = Nothing
        End If
        DataGridView1.ItemsSource = dv

        Dim t As New System.Windows.Threading.DispatcherTimer With {.IsEnabled = True, .Interval = New System.TimeSpan(0, 0, 1)}
        AddHandler t.Tick, AddressOf t_Tick
    End Sub

    Private Sub txt_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Try
            dv.Sort = DataGridView1.Columns(sender.Tag).Header
        Catch
        End Try
    End Sub

    Private Sub txt_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Try
            dv.RowFilter = " 1=1"
            For i As Integer = 0 To dt.Columns.Count - 1
                If dt.Columns(i).DataType.FullName.Contains("Int") Then
                    dv.RowFilter &= " And [" & dt.Columns(i).ColumnName & "] >=" & Val(MyTextBoxes(i).Text) & " "
                Else
                    dv.RowFilter &= " And [" & dt.Columns(i).ColumnName & "] Like '%" & MyTextBoxes(i).Text & "%' "
                End If
            Next
        Catch
        End Try
    End Sub

    Private Sub txt_Enter2(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Try
            dv2.Sort = DataGridView2.Columns(sender.Tag).Header
        Catch
        End Try
    End Sub

    Private Sub txt_TextChanged2(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Try
            dv2.RowFilter = " 1=1"
            For i As Integer = 0 To dt2.Columns.Count - 1
                If dt2.Columns(i).DataType.FullName.Contains("Int") Then
                    dv2.RowFilter &= " And [" & dt2.Columns(i).ColumnName & "] >=" & Val(MyTextBoxes2(i).Text) & " "
                Else
                    dv2.RowFilter &= " And [" & dt2.Columns(i).ColumnName & "] Like '%" & MyTextBoxes2(i).Text & "%' "
                End If
            Next
        Catch
        End Try
    End Sub

    Public SelectedId As String = 0
    Public SelectedName As String = ""
    Public SelectedRow As System.Data.DataRowView
    Private Sub DataGridView1_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles Me.PreviewKeyDown
        Try
            If e.Key = System.Windows.Input.Key.Enter Then
                SelectedId = DataGridView1.Items(DataGridView1.SelectedIndex)(0)
                SelectedName = DataGridView1.Items(DataGridView1.SelectedIndex)(1)
                SelectedRow = DataGridView1.Items(DataGridView1.SelectedIndex)
                Close()
            ElseIf e.Key = Input.Key.Escape Then
                Close()
            ElseIf e.Key = Input.Key.Up Then
                DataGridView1.SelectedIndex = DataGridView1.SelectedIndex - 1
                DataGridView1.ScrollIntoView(DataGridView1.SelectedItem)
            ElseIf e.Key = Input.Key.Down Then
                DataGridView1.SelectedIndex = DataGridView1.SelectedIndex + 1
                DataGridView1.ScrollIntoView(DataGridView1.SelectedItem)
            End If
        Catch ex As Exception
        End Try
    End Sub

    Private Sub DataGridView1_ColumnHeaderDragCompleted(sender As Object, e As Primitives.DragCompletedEventArgs) Handles DataGridView1.ColumnHeaderDragCompleted
        MessageBox.Show(6)
    End Sub


    Private Sub DataGridView1_MouseDoubleClick(ByVal sender As Object, ByVal e As System.Windows.Input.MouseButtonEventArgs) Handles DataGridView1.MouseDoubleClick
        Try
            SelectedId = DataGridView1.Items(DataGridView1.SelectedIndex)(2).ToString
            SelectedName = DataGridView1.Items(DataGridView1.SelectedIndex)(3).ToString
            SelectedRow = DataGridView1.Items(DataGridView1.SelectedIndex)
            Close()
        Catch ex As Exception
        End Try
    End Sub


    Private Sub LoadResource()
    End Sub

    Private Sub t_Tick(sender As Object, e As EventArgs)
        If Not sender Is Nothing Then CType(sender, System.Windows.Threading.DispatcherTimer).Stop()

        'Dim CurrentActualWidth As Integer = 0
        Try
            For i As Integer = 0 To dt.Columns.Count - 1
                Dim txt As New Controls.TextBox With {.Height = 30, .Margin = New Thickness(0, 0, 0, 10)}
                ReDim Preserve MyTextBoxes(MyTextBoxes.Length + 1)
                MyTextBoxes(i) = txt
                'Dim d = DataGridView1.Columns(i).ActualWidth
                'txt.Width = d
                'txt.SetResourceReference(TextBox.WidthProperty, Val(txt.Text))

                Dim binding As New Binding("ActualWidth")
                binding.UpdateSourceTrigger = UpdateSourceTrigger.PropertyChanged
                binding.Source = DataGridView1.Columns(i)
                txt.SetBinding(TextBox.WidthProperty, binding)

                'CurrentActualWidth += DataGridView1.Columns(i).ActualWidth
                txt.Tag = i
                txt.TabIndex = i
                txt.HorizontalAlignment = HorizontalAlignment.Left
                txt.VerticalAlignment = VerticalAlignment.Top

                SC.Children.Add(txt)
                AddHandler txt.GotFocus, AddressOf txt_Enter
                AddHandler txt.TextChanged, AddressOf txt_TextChanged
            Next
            DataGridView1.SelectedIndex = 0
        Catch ex As Exception
            Dim s As String = ex.Message
        End Try
        DataGridView1.IsReadOnly = True


    End Sub
    Sub Load2()
        SC2.Children.Clear()
        Try
            For i As Integer = 0 To dt2.Columns.Count - 1
                Dim txt As New Controls.TextBox With {.Height = 30, .Margin = New Thickness(0, 0, 0, 10)}
                ReDim Preserve MyTextBoxes2(MyTextBoxes2.Length + 1)
                MyTextBoxes2(i) = txt
                'Dim d = DataGridView1.Columns(i).ActualWidth
                'txt.Width = d
                'txt.SetResourceReference(TextBox.WidthProperty, Val(txt.Text))

                Dim binding As New Binding("ActualWidth")
                binding.UpdateSourceTrigger = UpdateSourceTrigger.PropertyChanged
                binding.Source = DataGridView2.Columns(i)
                txt.SetBinding(TextBox.WidthProperty, binding)

                'CurrentActualWidth += DataGridView1.Columns(i).ActualWidth
                txt.Tag = i
                txt.TabIndex = i
                txt.HorizontalAlignment = HorizontalAlignment.Left
                txt.VerticalAlignment = VerticalAlignment.Top

                SC2.Children.Add(txt)
                AddHandler txt.GotFocus, AddressOf txt_Enter2
                AddHandler txt.TextChanged, AddressOf txt_TextChanged2
            Next
            DataGridView2.SelectedIndex = 0
        Catch ex As Exception
            Dim s As String = ex.Message
        End Try
        DataGridView2.IsReadOnly = True
    End Sub

    Private Sub DataGridView1_SelectionChanged(sender As Object, e As SelectionChangedEventArgs) Handles DataGridView1.SelectionChanged
        Try

            DataGridView2.ItemsSource = Nothing
            dt2 = bm.ExecuteAdapter("GetSalesSpecific", New String() {"StoreId", "Flag", "InvoiceNo", "EmpId"}, {DataGridView1.Items(DataGridView1.SelectedIndex)(0), DataGridView1.Items(DataGridView1.SelectedIndex)(1), DataGridView1.Items(DataGridView1.SelectedIndex)(2), Md.UserName})
            dt2.TableName = "tbl"
            dv2.Table = dt2
            DataGridView2.ItemsSource = dv2
            DataGridView2.IsReadOnly = True

            DataGridView2.Columns(dt2.Columns("ItemId").Ordinal).Header = "كود الصنف"
            DataGridView2.Columns(dt2.Columns("ItemName").Ordinal).Header = "اسم الصنف"
            DataGridView2.Columns(dt2.Columns("Qty").Ordinal).Header = "الكمية"
            DataGridView2.Columns(dt2.Columns("Qty2").Ordinal).Header = "العدد/عبوة"
            DataGridView2.Columns(dt2.Columns("Qty3").Ordinal).Header = "عدد العبوات"
            DataGridView2.Columns(dt2.Columns("Price").Ordinal).Header = "السعر"
            DataGridView2.Columns(dt2.Columns("Value").Ordinal).Header = "القيمة"
        Catch ex As Exception
            Dim s As String = ex.Message
        End Try
        Load2()
    End Sub

End Class