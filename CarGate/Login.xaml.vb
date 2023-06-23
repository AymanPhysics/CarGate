Imports System.Data
Imports System.Windows.Controls.Primitives

Public Class Login

    Dim bm As New BasicMethods
    Public Flag As Integer = 1
    Private Sub btnLogin_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnLogin.Click

        If Username.Text.Trim = "" Or Username.Text.Trim = "-" Or Username.SelectedIndex < 0 Then
            Username.Focus()
            Return
        End If

        If Password.Password.Trim = "" Then
            Password.Focus()
            Return
        End If

        Dim dt As DataTable

        If Not bm.StopPro() Then Return
        Dim paraname() As String = {"Id", "Password"}
        Dim paravalue() As String = {Username.SelectedValue.ToString, bm.Encrypt(Password.Password)}
        dt = bm.ExecuteAdapter("TestLogin", paraname, paravalue)
        If dt.Rows.Count = 0 Then
            bm.ShowMSG("Invalid Password ...")
            Password.Focus()
            Password.SelectAll()
            Exit Sub
        End If
        Md.UserName = Username.SelectedValue.ToString
        Md.ArName = dt.Rows(0)("Name").ToString
        Md.EnName = dt.Rows(0)("EnName").ToString
        Md.LevelId = dt.Rows(0)("LevelId").ToString
        Md.Password = bm.Decrypt(dt.Rows(0)("Password").ToString)
        Md.CompanyName = dt.Rows(0)("CompanyName").ToString
        Md.CompanyTel = dt.Rows(0)("CompanyTel").ToString
        Md.Manager = IIf(dt.Rows(0)("Manager").ToString() = "1", True, False)
        Md.Nurse = dt.Rows(0)("Nurse").ToString
        Md.Receptionist = IIf(dt.Rows(0)("Receptionist").ToString() = "1", True, False)
        Md.DefaultStore = dt.Rows(0)("DefaultStore")
        Md.DefaultSave = dt.Rows(0)("DefaultSave")
        Md.DefaultBank = dt.Rows(0)("DefaultBank")
        Md.CostCenterId = dt.Rows(0)("CostCenterId")
        Md.EditPrices = IIf(dt.Rows(0)("EditPrices").ToString() = "1", True, False)
        Md.UserSeeSalesPrice = IIf(dt.Rows(0)("SalesPrice").ToString() = "1", True, False)
        Md.UserSeePurchasesPrice = IIf(dt.Rows(0)("PurchasesPrice").ToString() = "1", True, False)
        Md.UserSeeImportPrice = IIf(dt.Rows(0)("ImportPrice").ToString() = "1", True, False)
        Md.UserCanRptExportButton = IIf(dt.Rows(0)("UserCanRptExportButton").ToString() = "1", True, False)
        Md.UserCanRecieve1 = IIf(dt.Rows(0)("UserCanRecieve1").ToString() = "1", True, False)
        Md.UserCanRecieve2 = IIf(dt.Rows(0)("UserCanRecieve2").ToString() = "1", True, False)
        Md.gmail = dt.Rows(0)("gmail")
        Md.gmailPassword = dt.Rows(0)("gmailPassword")
        Md.whatsmateINSTANCE_ID = dt.Rows(0)("whatsmateINSTANCE_ID")
        Md.whatsmateCLIENT_ID = dt.Rows(0)("whatsmateCLIENT_ID")
        Md.whatsmateCLIENT_SECRET = dt.Rows(0)("whatsmateCLIENT_SECRET")
        Md.smsmisrSenderID = dt.Rows(0)("smsmisrSenderID")
        Md.smsmisrUsername = dt.Rows(0)("smsmisrUsername")
        Md.smsmisrPassword = dt.Rows(0)("smsmisrPassword")

        Md.StopProfiler = IIf(dt.Rows(0)("StopProfiler").ToString() = "1", True, False)
        Md.HideSubAccNo = IIf(dt.Rows(0)("HideSubAccNo").ToString() = "1", True, False)
        Md.ShowSalaries = IIf(dt.Rows(0)("ShowSalaries").ToString() = "1", True, False)
        Md.ShowCostCenter = IIf(dt.Rows(0)("ShowCostCenter").ToString() = "1", True, False)
        Md.ShowCostCenterSub = IIf(dt.Rows(0)("ShowCostCenterSub").ToString() = "1", True, False)
        Md.ShowAnalysis = IIf(dt.Rows(0)("ShowAnalysis").ToString() = "1", True, False)
        Md.ShowBanks = IIf(dt.Rows(0)("ShowBanks").ToString() = "1", True, False)
        Md.ShowBarcode = IIf(dt.Rows(0)("ShowBarcode").ToString() = "1", True, False)
        Md.ShowItemSerialNo = IIf(dt.Rows(0)("ShowItemSerialNo").ToString() = "1", True, False)
        Md.ShowColorAndSize = IIf(dt.Rows(0)("ShowColorAndSize").ToString() = "1", True, False)
        Md.ShowGridAccCombo = IIf(dt.Rows(0)("ShowGridAccCombo").ToString() = "1", True, False)
        Md.ShowShifts = IIf(dt.Rows(0)("ShowShifts").ToString() = "1", True, False)
        Md.ShowShiftForEveryStore = IIf(dt.Rows(0)("ShowShiftForEveryStore").ToString() = "1", True, False)
        Md.ShowQtySub = IIf(dt.Rows(0)("ShowQtySub").ToString() = "1", True, False)
        Md.ShowPriceLists = IIf(dt.Rows(0)("ShowPriceLists").ToString() = "1", True, False)
        Md.ShowCurrency = IIf(dt.Rows(0)("ShowCurrency").ToString() = "1", True, False)
        Md.ShowTaxETA = IIf(dt.Rows(0)("ShowTaxETA").ToString() = "1", True, False)
        Md.AllowMultiCurrencyPerSubAcc = IIf(dt.Rows(0)("AllowMultiCurrencyPerSubAcc").ToString() = "1", True, False)
        Md.ShowBankCash_G = IIf(dt.Rows(0)("ShowBankCash_G").ToString() = "1", True, False)
        Md.ShowBankCash_G2 = IIf(dt.Rows(0)("ShowBankCash_G2").ToString() = "1", True, False)
        Md.ShowStoresMotionsEditing = IIf(dt.Rows(0)("ShowStoresMotionsEditing").ToString() = "1", True, False)
        Md.ShowBankCashMotionsEditing = IIf(dt.Rows(0)("ShowBankCashMotionsEditing").ToString() = "1", True, False)
        Md.ShowGridAccNames = IIf(dt.Rows(0)("ShowGridAccNames").ToString() = "1", True, False)
        Md.ShowBankCash_GAccNo_Not_LinkFile = IIf(dt.Rows(0)("ShowBankCash_GAccNo_Not_LinkFile").ToString() = "1", True, False)
        Md.EditPrices = IIf(dt.Rows(0)("EditPrices").ToString() = "1", True, False)
        Md.UserSeeSalesPrice = IIf(dt.Rows(0)("UserSeeSalesPrice").ToString() = "1", True, False)
        Md.UserSeePurchasesPrice = IIf(dt.Rows(0)("UserSeePurchasesPrice").ToString() = "1", True, False)
        Md.UserSeeImportPrice = IIf(dt.Rows(0)("UserSeeImportPrice").ToString() = "1", True, False)
        Md.UserCanRptExportButton = IIf(dt.Rows(0)("UserCanRptExportButton").ToString() = "1", True, False)
        Md.RptFromToday = IIf(dt.Rows(0)("RptFromToday").ToString() = "1", True, False)
        Md.UserCanRecieve1 = IIf(dt.Rows(0)("UserCanRecieve1").ToString() = "1", True, False)
        Md.UserCanRecieve2 = IIf(dt.Rows(0)("UserCanRecieve2").ToString() = "1", True, False)
        Md.ShowChat = IIf(dt.Rows(0)("ShowChat").ToString() = "1", True, False)
        Md.PrintPoneA5 = IIf(dt.Rows(0)("PrintPoneA5").ToString() = "1", True, False)
        Md.ShowItemExpireDate = IIf(dt.Rows(0)("ShowItemExpireDate").ToString() = "1", True, False)
        Md.CheckItemBal = IIf(dt.Rows(0)("CheckItemBal").ToString() = "1", True, False)
        Md.ShowPurchasePrice = IIf(dt.Rows(0)("ShowPurchasePrice").ToString() = "1", True, False)
        Md.PreventItemDoublication = IIf(dt.Rows(0)("PreventItemDoublication").ToString() = "1", True, False)
        Md.ShowNotifications = IIf(dt.Rows(0)("ShowNotifications").ToString() = "1", True, False)
        Md.ShowWeightQty = IIf(dt.Rows(0)("ShowWeightQty").ToString() = "1", True, False)


        Select Case Md.MyProjectType
            Case Else
                'bm.TextToSpeech(Md.ArName)
        End Select

        If Md.Manager Then
            'bm.BackupAndSendEMail()
        End If

        Dim m As MyMainWindow = Application.Current.MainWindow
        m.LoadTabs(New MainPage)
        IsLogedIn = True

        SaveSetting("OMEGA", "Login", "AccYear", AccYear.Text)
        SaveSetting("OMEGA", "Login", "Username", Username.Text)
    End Sub

    Private Sub Login_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return
        LoadResource()

        bm.GetImage("Statics", New String() {}, New String() {}, "Logo", CompanyLogo)

        Dim dt As New DataTable("ddtt")
        dt.Columns.Add("Id")
        dt.Columns.Add("Name")
        'For Each file In IO.Directory.GetFiles(System.Windows.Forms.Application.StartupPath)
        '    If file.ToLower.EndsWith(".udl") AndAlso Not file.ToLower.EndsWith("connect.udl") Then
        '        dt.Rows.Add(file.ToLower.Split("\").Last.Replace(".udl", ""), file.ToLower.Split("\").Last.Replace(".udl", ""))
        '    End If
        'Next
        For Each file In IO.Directory.GetFiles(System.Windows.Forms.Application.StartupPath)
            If file.ToLower.EndsWith(".udldll") Then
                dt.Rows.Add(file.ToLower.Split("\").Last.Replace(".udldll", ""), file.ToLower.Split("\").Last.Replace(".udldll", ""))
            End If
        Next
        bm.FillCombo(dt, AccYear)

        If dt.Rows.Count <= 1 Then
            lblAccYear.Visibility = Visibility.Hidden
            AccYear.Visibility = Visibility.Hidden
            LoadEmployees()
        Else
            lblAccYear.Visibility = Visibility.Visible
            AccYear.Visibility = Visibility.Visible

            Dim MyAccYear As String = GetSetting("OMEGA", "Login", "AccYear")
            If MyAccYear = "" Then
                AccYear.SelectedIndex = AccYear.Items.Count - 1
            Else
                AccYear.Text = MyAccYear
            End If
        End If


        LoadResource()
    End Sub

    Private Sub LoadResource()
        btnLogin.SetResourceReference(ContentProperty, "Login")
        lblUsername.SetResourceReference(ContentProperty, "Username")
        lblPassword.SetResourceReference(ContentProperty, "Password")
        lblAccYear.SetResourceReference(ContentProperty, "AccYear")
    End Sub

    Private Sub LoadEmployees()


        Dim AppColor As String = bm.ExecuteScalar("select AppColor from Statics")
        Try
            Application.Current.Resources("Bg") = New BrushConverter().ConvertFromString(AppColor)
        Catch ex As Exception
        End Try

        Dim CboName As String = Resources.Item("CboName")
        bm.FillCombo("select Id," & CboName & " Name from Employees where SystemUser='1' and Stopped='0' union select 0 Id,'-' Name order by Name", Username)


        Md.CompanyName = bm.ExecuteScalar("select CompanyName from Statics")
        Md.CompanyTel = bm.ExecuteScalar("select CompanyTel from Statics")
        Md.WhatsAppLink = bm.ExecuteScalar("select WhatsAppLink from Statics")


        Username.Text = GetSetting("OMEGA", "Login", "Username")
        If Username.Text.Trim = "" Then
            Username.Focus()
        Else
            Password.Focus()
        End If
    End Sub


    Private Sub AccYear_SelectionChanged(sender As Object, e As SelectionChangedEventArgs) Handles AccYear.SelectionChanged
        Try
            Dim m As MyMainWindow = Application.Current.MainWindow
            Md.UdlName = AccYear.SelectedValue
            If con.State = ConnectionState.Open Then con.Close()
            If Not m.LoadConnection() Then
                Return
            End If

            'Dim x As Integer = 0
            'While Not m.LoadConnection()
            '    If x > 0 Then
            '        Application.Current.Shutdown()
            '        Return
            '    End If
            '    Dim frm As New EditConnection
            '    frm.Show()
            '    frm.Hide()
            '    frm.AccYear.Text = Md.UdlName
            '    If Not Md.MyProjectType = ProjectType.NawarGroup Then
            '        frm.ServerName.Text = con.DataSource
            '        frm.Database.Text = con.Database
            '    End If
            '    frm.ShowDialog()
            '    x += 1
            'End While
            
            bm = New BasicMethods
            LoadEmployees()
        Catch ex As Exception
        End Try
    End Sub

    Private Sub btnEditCurrentConnection_Click(sender As Object, e As RoutedEventArgs) Handles btnEditCurrentConnection.Click
        Dim frm As New EditConnection
        frm.Show()
        frm.Hide()
        frm.AccYear.Text = Md.UdlName
        frm.Database.Text = con.Database
        frm.ServerName.Text = con.DataSource
        frm.ShowDialog()
        Login_Loaded(Nothing, Nothing)
        AccYear.Text = Md.UdlName
        AccYear_SelectionChanged(Nothing, Nothing)
    End Sub

End Class
