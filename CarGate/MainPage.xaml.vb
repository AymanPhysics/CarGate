' Copyright © Microsoft Corporation.  All Rights Reserved.
' This code released under the terms of the 
' Microsoft Public License (MS-PL, http://opensource.org/licenses/ms-pl.html.)

Imports System.Windows.Media.Animation
Imports System.Windows.Threading
Imports System.Data
Imports System.Xml

Partial Public Class MainPage
    Inherits Page
    Public NLevel As Boolean = False
    Dim m As MyMainWindow = Application.Current.MainWindow
    Dim bm As New BasicMethods
    WithEvents t As New DispatcherTimer With {.IsEnabled = True, .Interval = New TimeSpan(0, 0, 1)}

    Private sampleGridOpacityAnimation As DoubleAnimation
    Private sampleGridTranslateTransformAnimation As DoubleAnimation
    Private borderTranslateDoubleAnimation As DoubleAnimation

    Public Sub New()
        InitializeComponent()

        Dim widthBinding As New Binding("ActualWidth")
        widthBinding.Source = Me

        sampleGridOpacityAnimation = New DoubleAnimation()
        sampleGridOpacityAnimation.To = 0
        sampleGridOpacityAnimation.Duration = New Duration(TimeSpan.FromSeconds(0.15))

        sampleGridTranslateTransformAnimation = New DoubleAnimation()
        sampleGridTranslateTransformAnimation.BeginTime = TimeSpan.FromSeconds(0.15)
        sampleGridTranslateTransformAnimation.Duration = New Duration(TimeSpan.FromSeconds(0.15))

        borderTranslateDoubleAnimation = New DoubleAnimation()
        borderTranslateDoubleAnimation.Duration = New Duration(TimeSpan.FromSeconds(0.3))
        borderTranslateDoubleAnimation.BeginTime = TimeSpan.FromSeconds(0)

    End Sub
    Private Shared _packUri As New Uri("pack://application:,,,/")



    Private Sub btnBack_Click(sender As Object, e As RoutedEventArgs) Handles btnBack.Click
        borderTranslateDoubleAnimation.From = 0
        borderTranslateDoubleAnimation.To = -ActualWidth
        SampleDisplayBorderTranslateTransform.BeginAnimation(TranslateTransform.XProperty, borderTranslateDoubleAnimation)
        GridSampleViewer_Loaded(Nothing, Nothing)
        Md.Currentpage = ""
    End Sub

    Private Sub selectedSampleChanged(ByVal sender As Object, ByVal args As RoutedEventArgs)
        If TypeOf args.Source Is RadioButton Then
            Dim theButton As RadioButton = CType(args.Source, RadioButton)

            Dim theFrame
            If TypeOf theButton.Tag Is MyPage Then
                theFrame = CType(theButton.Tag, MyPage)
                If Resources.Item(CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag) = "" Then
                    theFrame.Title = CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag
                Else
                    theFrame.Title = Resources.Item(CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag)
                End If
                If Not Md.MyProjectType = ProjectType.PCs Then
                    CType(theButton.Tag, MyPage).MySecurityType.AllowEdit = dtLevelsMenuitems.Select("Id=" & theButton.Name.Replace("menuitem", "")).ToList(0)("AllowEdit") = 1
                    CType(theButton.Tag, MyPage).MySecurityType.AllowDelete = dtLevelsMenuitems.Select("Id=" & theButton.Name.Replace("menuitem", "")).ToList(0)("AllowDelete") = 1
                    CType(theButton.Tag, MyPage).MySecurityType.AllowNavigate = dtLevelsMenuitems.Select("Id=" & theButton.Name.Replace("menuitem", "")).ToList(0)("AllowNavigate") = 1
                    CType(theButton.Tag, MyPage).MySecurityType.AllowPrint = dtLevelsMenuitems.Select("Id=" & theButton.Name.Replace("menuitem", "")).ToList(0)("AllowPrint") = 1
                End If
            ElseIf TypeOf theButton.Tag Is Window Then
                theFrame = CType(theButton.Tag, MyWindow)
                If Resources.Item(CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag) = "" Then
                    theFrame.Title = CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag
                Else
                    theFrame.Title = Resources.Item(CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag)
                End If
                If Not Md.MyProjectType = ProjectType.PCs Then
                    CType(theButton.Tag, MyWindow).MySecurityType.AllowEdit = dtLevelsMenuitems.Select("Id=" & theButton.Name.Replace("menuitem", "")).ToList(0)("AllowEdit") = 1
                    CType(theButton.Tag, MyWindow).MySecurityType.AllowDelete = dtLevelsMenuitems.Select("Id=" & theButton.Name.Replace("menuitem", "")).ToList(0)("AllowDelete") = 1
                    CType(theButton.Tag, MyWindow).MySecurityType.AllowNavigate = dtLevelsMenuitems.Select("Id=" & theButton.Name.Replace("menuitem", "")).ToList(0)("AllowNavigate") = 1
                    CType(theButton.Tag, MyWindow).MySecurityType.AllowPrint = dtLevelsMenuitems.Select("Id=" & theButton.Name.Replace("menuitem", "")).ToList(0)("AllowPrint") = 1
                End If
            End If

            theButton.IsTabStop = False
            CType(args.Source, RadioButton).IsChecked = False

            If TypeOf theButton.Tag Is Window Then
                CType(theFrame, Window).Show()
                CType(theFrame, Window).WindowState = WindowState.Minimized
                CType(theFrame, Window).WindowState = WindowState.Maximized
            ElseIf m.layoutSwitcher.SelectedIndex = 1 Then
                Dim frm As New MyWindow
                If Resources.Item(CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag) = "" Then
                    frm.Title = CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag
                Else
                    frm.Title = Resources.Item(CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag)
                End If
                frm.Content = theButton.Tag
                frm.WindowState = WindowState.Maximized
                frm.Show()
                frm.WindowState = WindowState.Minimized
                frm.WindowState = WindowState.Maximized
            Else
                SampleDisplayFrame.Content = theButton.Tag
                SampleDisplayBorder.Visibility = Visibility.Visible
                Try
                    theFrame.Tag = CType(CType(args.Source, RadioButton).Content, TranslateTextAnimationExample).RealText.Tag
                Catch ex As Exception
                End Try
                sampleDisplayFrameLoaded(theFrame, args)
            End If
        End If

    End Sub

    Private Sub sampleDisplayFrameLoaded(ByVal sender As Object, ByVal args As EventArgs)
        If TypeOf sender Is MyWindow Then
            Try
                If Resources.Item(CType(sender, MyWindow).Tag) = "" Then
                    CType(sender, MyWindow).Title = CType(sender, MyWindow).Tag
                Else
                    CType(sender, MyWindow).Title = Resources.Item(CType(sender, MyWindow).Tag)
                End If
                Md.Currentpage = CType(sender, MyWindow).Title
            Catch ex As Exception
            End Try
        ElseIf TypeOf sender Is Page Then
            Try
                If Resources.Item(CType(sender, Page).Tag) = "" Then
                    CType(sender, Page).Title = CType(sender, Page).Tag
                Else
                    CType(sender, Page).Title = Resources.Item(CType(sender, Page).Tag)
                End If
                Md.Currentpage = CType(sender, Page).Title
            Catch ex As Exception
            End Try
        ElseIf Not sender Is Nothing AndAlso TypeOf CType(sender, Frame).Content Is Page Then
            Try
                If Resources.Item(CType(CType(sender, Frame).Content, Page).Tag) = "" Then
                    CType(CType(sender, Frame).Content, Page).Title = CType(CType(sender, Frame).Content, Page).Tag
                Else
                    CType(CType(sender, Frame).Content, Page).Title = Resources.Item(CType(CType(sender, Frame).Content, Page).Tag)
                End If
                Md.Currentpage = CType(CType(sender, Frame).Content, Page).Title
            Catch ex As Exception
            End Try
            Try
                If Resources.Item(CType(sender, Page).Tag) = "" Then
                    CType(sender, Page).Title = CType(sender, Page).Tag
                Else
                    CType(sender, Page).Title = Resources.Item(CType(sender, Page).Tag)
                End If
                Md.Currentpage = CType(sender, Page).Title
            Catch ex As Exception
            End Try
        End If

        sampleGridTranslateTransformAnimation.To = -ActualWidth
        borderTranslateDoubleAnimation.From = -ActualWidth
        borderTranslateDoubleAnimation.To = 0

        SampleDisplayBorder.Visibility = Visibility.Visible
        SampleGrid.BeginAnimation(Grid.OpacityProperty, sampleGridOpacityAnimation)
        SampleGridTranslateTransform.BeginAnimation(TranslateTransform.XProperty, sampleGridTranslateTransformAnimation)
        SampleDisplayBorderTranslateTransform.BeginAnimation(TranslateTransform.XProperty, borderTranslateDoubleAnimation)
    End Sub

    Private Sub galleryLoaded(ByVal sender As Object, ByVal args As RoutedEventArgs)
        If bm.TestIsLoaded(Me, True) Then Return
        tab.Margin = New Thickness(0)
        tab.HorizontalAlignment = HorizontalAlignment.Stretch
        tab.VerticalAlignment = VerticalAlignment.Stretch
        'tab.Style = FindResource("TabControlLeftStyle")
        'tab.Style = FindResource("OutlookTabControlStyle")

        Load()

        SampleDisplayBorderTranslateTransform.X = -ActualWidth
        SampleDisplayBorder.Visibility = Visibility.Hidden
    End Sub

    Private Sub pageSizeChanged(ByVal sender As Object, ByVal args As SizeChangedEventArgs)
        SampleDisplayBorderTranslateTransform.X = Me.ActualWidth
    End Sub

    Dim DynamicMenuitem As Integer = 0
    Dim DtCurrentMenuitem As New DataTable With {.TableName = "T"}
    Sub TestCurrentMenuitem(CurrentMenuitem As Integer)
        If DtCurrentMenuitem.Columns.Count = 0 Then DtCurrentMenuitem.Columns.Add("C")
        If DtCurrentMenuitem.Select("C=" & CurrentMenuitem).Length > 0 AndAlso Not Md.MyProjectType = ProjectType.PCs Then MessageBox.Show(CurrentMenuitem)
        DtCurrentMenuitem.Rows.Add(CurrentMenuitem)
    End Sub
    Sub LoadLabel(CurrentMenuitem As Integer, ByVal G As WrapPanel, Ttl As String)
        TestCurrentMenuitem(CurrentMenuitem)

        For i As Integer = 0 To m.langSwitcher.Items.Count - 1
            Try
                If TryCast(TryCast(m.langSwitcher.Items(i), XmlElement).Attributes("Visibility"), XmlAttribute).Value = "2" Then Continue For
                Dim rd As ResourceDictionary = Md.MyDictionaries.Items(i)
                If rd.Item(Ttl) Is Nothing Then
                    rd.Item(Ttl) = Ttl
                Else
                    While rd.Item(Ttl).Length < 16
                        rd.Item(Ttl) = " " & rd.Item(Ttl) & " "
                    End While
                End If
            Catch ex As Exception
            End Try
        Next

        Dim lbl0 As New Label With {.Height = ActualHeight, .Margin = New Windows.Thickness(24, 0, 0, 0)}
        G.Children.Add(lbl0)

        Dim lbl As New Label With {.Name = "menuitem" & CurrentMenuitem, .FontFamily = New System.Windows.Media.FontFamily("khalaad al-arabeh 2"), .FontSize = 30, .HorizontalContentAlignment = HorizontalAlignment.Center, .Foreground = New SolidColorBrush(Color.FromArgb(255, 9, 103, 168)), .FontWeight = FontWeight.FromOpenTypeWeight(1), .Height = 90}
        lbl.SetResourceReference(ContentProperty, Ttl)

        If Application.Current.MainWindow.Resources.Item(Ttl) = "" Then
            lbl.Content = Ttl
        End If

        G.Children.Add(lbl)
        'If Md.MyProjectType = ProjectType.NawarGroup OrElse Md.MyProjectType = ProjectType.Hamido Then
        lbl.Width = 240
        lbl.Height = 70
        lbl.FontSize = 24
        'End If

        If Ttl = "" Then lbl.Height = 0


        If Not Lvl Then
            Dim it As New MenuItem With {.Header = "-----------------", .Name = "NewMenuItemSub" & CurrentMenuitem}
            it.Visibility = Visibility.Collapsed
            CType(m.MyMenu.Items(m.MyMenu.Items.Count - 1), MenuItem).Items.Add(it)

            Dim it2 As New MenuItem With {.Header = "-----------------", .Name = "NewMenuItemSub" & CurrentMenuitem}
            it2.IsEnabled = False
            CType(m.MyMenu.Items(m.MyMenu.Items.Count - 1), MenuItem).Items.Add(it2)
        End If
    End Sub

    Function LoadRadio(CurrentMenuitem As Integer, ByVal G As WrapPanel, ByVal Ttl As String) As RadioButton
        TestCurrentMenuitem(CurrentMenuitem)

        For i As Integer = 0 To m.langSwitcher.Items.Count - 1
            Try
                If TryCast(TryCast(m.langSwitcher.Items(i), XmlElement).Attributes("Visibility"), XmlAttribute).Value = "2" Then Continue For
                Dim rd As ResourceDictionary = Md.MyDictionaries.Items(i)
                If rd.Item(Ttl) Is Nothing Then
                    rd.Item(Ttl) = Ttl
                Else
                    While rd.Item(Ttl).Length < 16
                        rd.Item(Ttl) = " " & rd.Item(Ttl) & " "
                    End While
                End If
            Catch ex As Exception
            End Try
        Next

        Dim RName As String = "menuitem" & CurrentMenuitem
        Dim r As New RadioButton With {.Name = RName, .Style = Application.Current.FindResource("GlassRadioButtonStyle"), .Width = 180, .Height = 90}
        'r.Tag = New Page With {.Content = frm}
        'If Md.MyProjectType = ProjectType.NawarGroup OrElse Md.MyProjectType = ProjectType.Hamido Then
        r.Width = 140
        r.Height = 70
        Dim t As New TranslateTextAnimationExample
        t.RealText.Tag = Ttl
        t.RealText.SetResourceReference(TextBlock.TextProperty, Ttl)

        If Application.Current.MainWindow.Resources.Item(Ttl) = "" Then
            t.RealText.Text = Ttl
        End If

        r.SetResourceReference(RadioButton.BackgroundProperty, "SC")
        t.SetResourceReference(RadioButton.BackgroundProperty, "SC")

        r.Content = t
        G.Children.Add(r)

        r.SetResourceReference(RadioButton.ToolTipProperty, Ttl)

        If Application.Current.MainWindow.Resources.Item(Ttl) = "" Then
            r.ToolTip = Ttl
        End If


        If Not Lvl Then
            Dim it As New MenuItem With {.Header = Ttl, .Name = "NewMenuItemSub" & CurrentMenuitem}
            it.Tag = r
            it.SetResourceReference(MenuItem.HeaderProperty, Ttl)
            CType(m.MyMenu.Items(m.MyMenu.Items.Count - 1), MenuItem).Items.Add(it)
            AddHandler it.Click, AddressOf it_Click
        End If
        Return r
    End Function

    Private Sub it_Click(sender As Object, e As RoutedEventArgs)
        Try
            Dim x As RadioButton = CType(sender.Tag, RadioButton)
            x.RaiseEvent(New RoutedEventArgs(RadioButton.CheckedEvent))
        Catch ex As Exception
        End Try
    End Sub

    Private Sub GridSampleViewer_Loaded(sender As Object, e As RoutedEventArgs) Handles Me.Loaded
        bm.TestIsLoaded(Me)
    End Sub

    Private Sub ResizeHeader(G As WrapPanel)
        If Lvl Then Return
        Dim Ttl As String = CType(CType(G.Parent, ScrollViewer).Parent, TabItem).Header
        Try
            If Not Md.DictionaryCurrent.Item(Ttl) Is Nothing Then
                While Md.DictionaryCurrent.Item(Ttl).Length < 16
                    Md.DictionaryCurrent.Item(Ttl) = " " & Md.DictionaryCurrent.Item(Ttl) & " "
                End While
            End If
        Catch
        End Try
    End Sub


    Public Lvl As Boolean = False
    Public Sub Load()

        If MyProjectType = ProjectType.PCs Then
            LoadGPCs(0)
            Return
        End If

        LoadTabs()

        If Not Lvl Then
            dtLevelsMenuitems = bm.ExecuteAdapter("select * from LevelsMenuitems where LevelId=" & Md.LevelId)
            Dim dtLevelsTabs As DataTable = bm.ExecuteAdapter("select * from LevelsTabs where LevelId=" & Md.LevelId)
            If dtLevelsMenuitems.Rows.Count = 0 Then Application.Current.Shutdown()

            For i As Integer = 0 To tab.Items.Count - 1
                Dim item As TabItem = CType(tab.Items(i), TabItem)

                If dtLevelsTabs.Select("Id=" & tab.Items(i).Name.ToString.Replace("tab", "")).Length = 0 Then
                    item.Visibility = Visibility.Collapsed
                    CType(m.MyMenu.Items(i), MenuItem).Visibility = Visibility.Collapsed
                End If
                item.Content.Visibility = item.Visibility

                For x As Integer = 0 To CType(CType(item.Content, ScrollViewer).Content, WrapPanel).Children.Count - 1
                    If CType(CType(item.Content, ScrollViewer).Content, WrapPanel).Children(x).GetType = GetType(RadioButton) Then
                        Dim t As RadioButton = CType(CType(CType(item.Content, ScrollViewer).Content, WrapPanel).Children(x), RadioButton)
                        If dtLevelsMenuitems.Select("Id=" & t.Name.ToString.Replace("menuitem", "")).Length = 0 Then
                            t.Visibility = Visibility.Collapsed
                            CType(CType(m.MyMenu.Items(i), MenuItem).Items(x), MenuItem).Visibility = Visibility.Collapsed
                        End If
                    ElseIf CType(CType(item.Content, ScrollViewer).Content, WrapPanel).Children(x).GetType = GetType(Label) Then
                        Dim t As Label = CType(CType(CType(item.Content, ScrollViewer).Content, WrapPanel).Children(x), Label)
                        If t.Name = "" Then
                            t.Visibility = Visibility.Visible
                        ElseIf dtLevelsMenuitems.Select("Id=" & t.Name.ToString.Replace("menuitem", "")).Length = 0 Then
                            t.Visibility = Visibility.Collapsed
                            CType(CType(m.MyMenu.Items(i), MenuItem).Items(x), MenuItem).Visibility = Visibility.Collapsed
                        End If
                    End If
                Next
            Next

            For i As Integer = 0 To tab.Items.Count - 1
                If CType(tab.Items(i), TabItem).Visibility = Visibility.Visible Then
                    CType(tab.Items(i), TabItem).IsSelected = True
                    Exit For
                End If
            Next

        End If

    End Sub

    Function MakePanel(CurrentTab As Integer, MyHeader As String, ImagePath As String) As WrapPanel
        Dim SV As New MyScrollViewer
        bm.SetImage(SV.Img, ImagePath)
        Dim t As New TabItem With {.Content = SV, .Name = "tab" & CurrentTab, .Header = MyHeader, .Tag = MyHeader}

        'Template.ControlTemplate().Grid().Border().TextBlock()
        'FontFamily="khalaad al-arabeh 2" FontSize="12

        t.Style = FindResource("MyTabItem")
        't.Style = FindResource("OutlookTabItemStyle")
        't.Background = FindResource("OutlookButtonBackground")
        't.Foreground = FindResource("OutlookButtonForeground")

        tab.Items.Add(t)
        Dim G As WrapPanel = SV.MyWrapPanel
        G.Name = "MyWrapPanel" & CurrentTab
        G.AddHandler(System.Windows.Controls.Primitives.ToggleButton.CheckedEvent, New System.Windows.RoutedEventHandler(AddressOf Me.selectedSampleChanged))

        ResizeHeader(G)
        t.SetResourceReference(TabItem.HeaderProperty, t.Header)
        If Application.Current.MainWindow.Resources.Item(MyHeader) = "" Then
            t.Header = MyHeader
        End If

        If Not Lvl Then
            Dim it As New MenuItem With {.Header = MyHeader, .MaxWidth = 150, .Name = "NewMenuItem" & CurrentTab}
            it.Tag = t
            it.SetResourceReference(MenuItem.HeaderProperty, MyHeader)
            If Application.Current.MainWindow.Resources.Item(MyHeader) = "" Then
                t.Header = MyHeader
                it.Header = MyHeader
            End If
            m.MyMenu.Items.Add(it)
            AddHandler it.MouseEnter, AddressOf itm_Click
        End If

        Return G
    End Function

    Private Sub itm_Click(sender As Object, e As RoutedEventArgs)
        Try
            Dim x As TabItem = CType(sender.Tag, TabItem)
            x.Focus()
            x.IsSelected = True
            x.BringIntoView()
        Catch ex As Exception
        End Try
    End Sub

    Private Sub LoadGPCs(CurrentTab As Integer)
        Dim G As WrapPanel = MakePanel(CurrentTab, "File", "Omega.jpg")

        AddHandler LoadRadio(0, G, "PCs").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                       Dim frm As New BasicForm With {.TableName = "PCs"}
                                                       bm.SetImage(CType(frm, BasicForm).Img, "password.jpg")
                                                       frm.txtName.MaxLength = 1000
                                                       m.TabControl1.Items.Clear()
                                                       sender.Tag = New MyPage With {.Content = frm}
                                                   End Sub


        AddHandler LoadRadio(0, G, "فتح سنة مالية جديدة").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                                       Dim frm As New CalcSalary With {.Flag = 11}
                                                                       sender.Tag = New MyPage With {.Content = frm}
                                                                   End Sub



    End Sub

    Private Sub LoadGFile(CurrentTab As Integer)
        Dim s As String = "MainOMEGA.jpg"

        Dim G As WrapPanel = MakePanel(CurrentTab, "File", s)
        Dim frm As UserControl

        AddHandler LoadRadio(101, G, "Employees").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                               sender.Tag = New MyPage With {.Content = New Employees}
                                                           End Sub


        AddHandler LoadRadio(102, G, "Attachment Types").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                                      frm = New BasicForm With {.TableName = "AttachmentTypes"}
                                                                      sender.Tag = New MyPage With {.Content = frm}
                                                                  End Sub

        If Md.ShowShifts Then
            AddHandler LoadRadio(103, G, "Shifts").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                                frm = New BasicForm With {.TableName = "Shifts"}
                                                                bm.SetImage(CType(frm, BasicForm).Img, "attchmenttype.jpg")
                                                                sender.Tag = New MyPage With {.Content = frm}
                                                            End Sub
        End If


        AddHandler LoadRadio(104, G, "Statics").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                             frm = New Statics
                                                             sender.Tag = New MyPage With {.Content = frm}
                                                         End Sub

        AddHandler LoadRadio(105, G, "CarTypes").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                              frm = New BasicForm1_2 With {.TableName = "CarTypes", .lblName2_text = "السعر", .SubName2 = "Price"}
                                                              sender.Tag = New MyPage With {.Content = frm}
                                                          End Sub

        LoadLabel(106, G, "")
        AddHandler LoadRadio(107, G, "ControlGate").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                                 frm = New ControlGate
                                                                 sender.Tag = New MyPage With {.Content = frm}
                                                             End Sub



    End Sub

    Private Sub LoadGSecurity(CurrentTab As Integer)
        Dim s As String = "MainOMEGA.jpg"

        Dim G As WrapPanel = MakePanel(CurrentTab, "Options", s)
        Dim frm As UserControl

        AddHandler LoadRadio(1101, G, "Change Password").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                                      frm = New ChangePassword
                                                                      sender.Tag = New MyPage With {.Content = frm}
                                                                  End Sub

        AddHandler LoadRadio(1102, G, "Levels").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                             frm = New Levels
                                                             sender.Tag = New MyPage With {.Content = frm}
                                                         End Sub

        AddHandler LoadRadio(1103, G, "Attachement").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                                  frm = New Attachments
                                                                  sender.Tag = New MyPage With {.Content = frm}
                                                              End Sub

        If Md.ShowShifts Then
            AddHandler LoadRadio(1104, G, "Close Shift").Checked, Sub(sender As Object, e As RoutedEventArgs)
                                                                      frm = New CalcSalary With {.Flag = 6}
                                                                      sender.Tag = New MyPage With {.Content = frm}
                                                                  End Sub
        End If

    End Sub


    Private Sub LoadAbout(CurrentTab As Integer)
        Dim s As String = "MainOMEGA.jpg"

        Dim G As WrapPanel = MakePanel(CurrentTab, "About", s)
        Dim wb As New WebBrowser With {.Margin = New Thickness(0)}
        wb.Navigate("http://omegaapp.blogspot.com.eg/")
        G.Children.Add(wb)
        wb.Width = tab.ActualWidth - 20
        wb.Height = tab.ActualHeight - 60
    End Sub



    Private Async Sub LoadTabs()
        LoadGFile(1)


        LoadGSecurity(11)


        If Md.ShowNotifications AndAlso Md.Manager Then
            'bm.ToastShowInformation("ShowInformation")
            'bm.ToastShowError("ShowError")
            'bm.ToastShowSuccess("ShowSuccess")
            'bm.ToastShowWarning("ShowWarning")

            'bm.Alert("عملاء راكدون", Form_Alert.enmType.Success, New RPT6 With {.Flag = 3, .Detail = 120, .Tag = "عملاء راكدون"})
            'bm.Alert("عملاء متأخرون", Form_Alert.enmType.Warning, New RPT6 With {.Flag = 3, .Detail = 121, .Tag = "عملاء متأخرون"})
            'bm.Alert("أصناف راكدة", Form_Alert.enmType.Errorr, New RPT6 With {.Flag = 3, .Detail = 25, .Tag = "أصناف راكدة"})
            'bm.Alert("أصناف تعدت حد الطلب", Form_Alert.enmType.Info, New RPT12 With {.Flag = 4, .Tag = "أصناف تعدت حد الطلب"})
        End If
    End Sub



End Class

