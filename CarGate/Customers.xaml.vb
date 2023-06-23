Imports System.Data
Imports System.IO
Imports System.Runtime.InteropServices
Imports System.Security.Cryptography
Imports System.Windows.Forms.Integration
Imports Newtonsoft.Json
Imports WhatsAppApi.Parser

Public Class Customers
    Public TableName As String = "Customers"
    Public SubId As String = "Id"
    Public SubName As String = "Name"



    Public MyId As Integer = 0
    Dim dt As New DataTable
    Dim bm As New BasicMethods
    WithEvents G1 As New MyGrid
    WithEvents G2 As New MyGrid

    Public Flag As Integer = 0

    Private Sub BasicForm_Loaded(ByVal sender As Object, ByVal e As System.Windows.RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return
        WhatsApp.Text = bm.ExecuteScalar("select top 1 WhatsAppStr from Statics")
        bm.TestSecurity(Me, {btnSave}, {btnDelete}, {btnFirst, btnNext, btnPrevios, btnLast, txtID}, {})
        bm.FillCombo("PriceLists", PriceListId, "")
        PriceListId.Visibility = Visibility.Hidden
        LoadWFH1()
        LoadWFH2()

        receiver_address_country.ItemsSource = JsonConvert.DeserializeObject(Of List(Of Country))(File.ReadAllText("Json/CountryCodes.json"))
        receiver_address_country.SelectedValuePath = "code"
        receiver_address_country.DisplayMemberPath = "Desc_ar"


        bm.FillCombo("select Code Id,Name from TaxApi_TeceiverTypes order by Id desc", receiver_type)


        bm.FillCombo("select Id,Name from Currencies order by Id", CurrencyId)


        bm.FillCombo("select Id,Name from Currencies order by Id", CurrencyId)
        If Not Md.ShowCurrency Then CurrencyId.Visibility = Visibility.Hidden
        LoadResource()
        bm.Fields = New String() {SubId, SubName, "AccNo", "CountryId", "CityId", "AreaId", "Address", "Floor", "Appartment", "Tel", "Mobile", "CurrencyId", "Exchange", "MainBal0", "Bal0", "DescPerc", "Type", "ApplyCurrencyCycle", "Ban", "PriceListId", "EmpId", "EmpId2", "Notes", "NationalId", "Ban2", "BanNotes", "CashierId", "MonthlyPayment", "MonthlyPaymentDay", "Ins1", "Ins2", "Ins3", "Ins10", "Ins20", "Ins30", "Date0", "Date1", "Date2", "Date3", "ItemDiscription", "Person", "Ban3", "DateOfBirth", "receiver_address_branchID", "receiver_address_country", "receiver_address_governate", "receiver_address_regionCity", "receiver_address_street", "receiver_address_buildingNumber", "receiver_address_postalCode", "receiver_address_floor", "receiver_address_room", "receiver_address_landmark", "receiver_address_additionalInformation", "receiver_type", "receiver_id", "receiver_name"}
        bm.control = New Control() {txtID, txtName, AccNo, CountryId, CityId, AreaId, Address, Floor, Appartment, Tel, Mobile, CurrencyId, Exchange, MainBal0, Bal0, DescPerc, Type, ApplyCurrencyCycle, Ban, PriceListId, EmpId, EmpId2, Notes, NationalId, Ban2, BanNotes, CashierId, MonthlyPayment, MonthlyPaymentDay, Ins1, Ins2, Ins3, Ins10, Ins20, Ins30, Date0, Date1, Date2, Date3, ItemDiscription, Person, Ban3, DateOfBirth, receiver_address_branchID, receiver_address_country, receiver_address_governate, receiver_address_regionCity, receiver_address_street, receiver_address_buildingNumber, receiver_address_postalCode, receiver_address_floor, receiver_address_room, receiver_address_landmark, receiver_address_additionalInformation, receiver_type, receiver_id, receiver_name}
        bm.KeyFields = New String() {SubId}
        bm.Table_Name = TableName
        If Not Md.ShowCurrency Then
            CurrencyId.Visibility = Visibility.Hidden
            lblExchange.Visibility = Visibility.Hidden
            Exchange.Visibility = Visibility.Hidden
            lblBal0.Visibility = Visibility.Hidden
            Bal0.Visibility = Visibility.Hidden
            ApplyCurrencyCycle.Visibility = Visibility.Hidden
        End If

        btn2.Content = "أوامر التوريد"
        btn2.Background = btnSave.Background


        btnNew_Click(sender, e)
        If MyId > 0 Then
            txtID.Text = MyId
            txtID_LostFocus(Nothing, Nothing)
            If Not Md.Manager Then
                btnDelete.IsEnabled = False
                Bal0.IsEnabled = False
                MainBal0.IsEnabled = False
            End If
        End If

        GIns.Visibility = Visibility.Hidden
        Ban2.Visibility = Visibility.Hidden
        BanNotes.Visibility = Visibility.Hidden
        lblBanNotes.Visibility = Visibility.Hidden
        TabTypes1.Visibility = Visibility.Hidden
        TabTypes2.Visibility = Visibility.Hidden
        TabTypes3.Visibility = Visibility.Hidden
        If Not Md.ShowTaxETA Then
            TabTypesETA.Visibility = Visibility.Collapsed
        End If

        btn2.Visibility = Visibility.Hidden
        btns.Visibility = Visibility.Hidden
        Ban3.Visibility = Visibility.Hidden
        DateOfBirth.Visibility = Visibility.Hidden
        lblDateOfBirth.Visibility = Visibility.Hidden
        lblLastPayment.Visibility = Visibility.Hidden
        LastPayment.Visibility = Visibility.Hidden
        LastPaymentValue.Visibility = Visibility.Hidden
        lblCurrentBal.Visibility = Visibility.Hidden
        CurrentBal.Visibility = Visibility.Hidden
        lblMonthlyPayment.Visibility = Visibility.Hidden
        MonthlyPayment.Visibility = Visibility.Hidden
        lblMonthlyPaymentDay.Visibility = Visibility.Hidden
        MonthlyPaymentDay.Visibility = Visibility.Hidden
        btnMonthlyPayment.Visibility = Visibility.Hidden
        lblPerson.Visibility = Visibility.Hidden
        Person.Visibility = Visibility.Hidden
        btnRpt.Visibility = Visibility.Hidden
    End Sub

    Structure GC1
        Shared Name As String = "Name"
        Shared NationalID As String = "NationalID"
        Shared Mobile As String = "Mobile"
        Shared Job As String = "Job"
        Shared Address As String = "Address"
        Shared Notes As String = "Notes"
    End Structure


    Private Sub LoadWFH1()
        'WFH.Background = New SolidColorBrush(Colors.LightSalmon)
        'WFH.Foreground = New SolidColorBrush(Colors.Red)
        WFH1.Child = G1

        G1.Columns.Clear()
        G1.ForeColor = System.Drawing.Color.DarkBlue

        G1.Columns.Add(GC1.Name, "الاسم")
        G1.Columns.Add(GC1.NationalID, "الرقم القومي")
        G1.Columns.Add(GC1.Mobile, "الموبيل")
        G1.Columns.Add(GC1.Job, "الوظيفة")
        G1.Columns.Add(GC1.Address, "العنوان")
        G1.Columns.Add(GC1.Notes, "ملاحظات")

    End Sub


    Structure GC2
        Shared Notes As String = "Notes"
        Shared EmpName As String = "EmpName"
        Shared MyGetDateTime As String = "MyGetDateTime"
    End Structure


    Private Sub LoadWFH2()
        'WFH.Background = New SolidColorBrush(Colors.LightSalmon)
        'WFH.Foreground = New SolidColorBrush(Colors.Red)
        WFH2.Child = G2

        G2.Columns.Clear()
        G2.ForeColor = System.Drawing.Color.DarkBlue

        G2.Columns.Add(GC2.Notes, "ملاحظات")
        G2.Columns.Add(GC2.EmpName, "الموظف")
        G2.Columns.Add(GC2.MyGetDateTime, "التاريخ")

        G2.Columns(GC2.Notes).FillWeight = 300
        G2.Columns(GC2.EmpName).ReadOnly = True
        G2.Columns(GC2.MyGetDateTime).ReadOnly = True
        G2.Columns(GC2.MyGetDateTime).FillWeight = 150

        AddHandler G2.CellEndEdit, AddressOf G2_CellEndEdit
    End Sub

    Private Sub G2_CellEndEdit(sender As Object, e As Forms.DataGridViewCellEventArgs)
        If G2.Rows(e.RowIndex).Cells(GC2.EmpName).Value Is Nothing And e.RowIndex < G2.Rows.Count - 1 Then
            G2.Rows(e.RowIndex).Cells(GC2.EmpName).Value = Md.ArName
            G2.Rows(e.RowIndex).Cells(GC2.MyGetDateTime).Value = bm.ToStrDateTimeFormated(bm.MyGetDateTime)
        End If
    End Sub


    Private Sub btnLast_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLast.Click
        bm.FirstLast(New String() {SubId}, "Max", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Sub FillControls()
        bm.FillControls(Me)
        AccNo_LostFocus(Nothing, Nothing)
        CountryId_LostFocus(Nothing, Nothing)
        CityId_LostFocus(Nothing, Nothing)
        AreaId_LostFocus(Nothing, Nothing)
        EmpId_LostFocus(Nothing, Nothing)
        EmpId2_LostFocus(Nothing, Nothing)
        CashierId_LostFocus(Nothing, Nothing)
        LoadGrid1()
        LoadGrid2()

        receiver_address_country.SelectedValue = "EG"
        CurrencyId_LostFocus(Nothing, Nothing)

        receiver_address_country.SelectedValue = "EG"
        receiver_address_governate.Text = "الإسكندرية"
        receiver_address_regionCity.Text = "الإسكندرية"

    End Sub
    Private Sub btnNext_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNext.Click
        bm.NextPrevious(New String() {SubId}, New String() {txtID.Text}, "Next", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        AllowSave = False
        If txtID.Text.Trim = "" Then
            Return
        End If
        If txtName.Text.Trim = "" Then
            txtName.Focus()
            Return
        End If

        Try
            Dim x As Integer = Val(bm.ExecuteScalar("select Id from " & TableName & " where Name='" & txtName.Text.Trim & "' and Id<>" & Val(txtID.Text)))
            If x > 0 Then
                bm.ShowMSG("تم تكرار الاسم بمسلسل رقم " & x)
                Return
            End If
        Catch
        End Try


        If Val(AccNo.Text) = 0 Then
            bm.ShowMSG("Please, Select Main AccNo")
            AccNo.Focus()
            Return
        End If


        Bal0.Text = Val(Bal0.Text.Trim)
        DescPerc.Text = Val(DescPerc.Text.Trim)
        bm.DefineValues()
        If Not bm.Save(New String() {SubId}, New String() {txtID.Text.Trim}) Then Return

        G1.EndEdit()
        If Not bm.SaveGrid(G1, "CustomerInsures", New String() {"CustomerId"}, New String() {txtID.Text}, New String() {"Name", "NationalID", "Mobile", "Job", "Address", "Notes"}, New String() {GC1.Name, GC1.NationalID, GC1.Mobile, GC1.Job, GC1.Address, GC1.Notes}, New VariantType() {VariantType.String, VariantType.String, VariantType.String, VariantType.String, VariantType.String, VariantType.String}, New String() {GC1.Name}, "", "") Then Return
        LoadGrid1()


        If Not bm.SaveGrid(G2, "CustomerNotes", New String() {"CustomerId"}, New String() {txtID.Text}, New String() {"Notes", "EmpName", "MyGetDateTime"}, New String() {GC2.Notes, GC2.EmpName, GC2.MyGetDateTime}, New VariantType() {VariantType.String, VariantType.String, VariantType.String, VariantType.String}, New String() {GC2.Notes}, "", "") Then Return
        LoadGrid2()


        AllowSave = True
        If Not DontClear Then btnNew_Click(sender, e)

    End Sub

    Private Sub Btn2_Click(sender As Object, e As RoutedEventArgs) Handles btn2.Click

        Dim d As String = bm.ToStrDate(bm.MyGetDate)
        Dim rpt As New ReportViewer
        rpt.Header = CType(Parent, Page).Title
        rpt.paraname = New String() {"@FromDate", "@ToDate", "@ToDate2", "@Shift", "ShiftName", "@Flag", "@StoreId", "StoreName", "@FromInvoiceNo", "@ToInvoiceNo", "@NewItemsOnly", "@RPTFlag1", "@RPTFlag2", "@PrintingGroupId", "@CashierId", "@IsClosedOnly", "Header", "@ToId", "@ItemId", "@ColorId", "ColorName", "@SizeId", "SizeName", "@SaveId", "ItemName", "@CountryId", "CountryName", "@GroupId", "GroupName", "@TypeId", "TypeName", "@WaiterId", "@SalesTypeId", "@Canceled", "@IsService", "@CostCenterId", "@ItemSerialNo"}
        rpt.paravalue = New String() {"2000-1-1", d, d, 0, "", 0, 0, "", 0, 0, 0, 31, 0, 0, 0, 0, btn2.Content, Val(txtID.Text), 0, 0, "", 0, "", 0, "", 0, "", 0, "", 0, "", 0, 0, 0, 0, 0, ""}
        rpt.Rpt = "Sales4.rpt"
        rpt.Show()

    End Sub


    Private Sub LoadGrid1()
        dt = bm.ExecuteAdapter("select * from CustomerInsures where CustomerId=" & txtID.Text)

        G1.Rows.Clear()
        For i As Integer = 0 To dt.Rows.Count - 1
            G1.Rows.Add({dt.Rows(i)("Name"), dt.Rows(i)("NationalID"), dt.Rows(i)("Mobile"), dt.Rows(i)("Job"), dt.Rows(i)("Address"), dt.Rows(i)("Notes")})
        Next
    End Sub

    Private Sub LoadGrid2()
        dt = bm.ExecuteAdapter("select * from CustomerNotes where CustomerId=" & txtID.Text & " order by MyGetDateTime")

        G2.Rows.Clear()
        For i As Integer = 0 To dt.Rows.Count - 1
            G2.Rows.Add({dt.Rows(i)("Notes"), dt.Rows(i)("EmpName"), dt.Rows(i)("MyGetDateTime")})
            G2.Rows(i).ReadOnly = True
        Next
    End Sub

    Private Sub btnFirst_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFirst.Click

        bm.FirstLast(New String() {SubId}, "Min", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub

    Private Sub btnNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnNew.Click
        bm.ClearControls()
        ClearControls()
    End Sub

    Sub ClearControls()


        bm.ClearControls()
        CurrencyId_LostFocus(Nothing, Nothing)
        LoadGrid1()
        LoadGrid2()
        AccName.Clear()
        CountryName.Clear()
        CityName.Clear()
        AreaName.Clear()
        EmpName.Clear()
        EmpName2.Clear()
        CashierId_LostFocus(Nothing, Nothing)

        txtName.Clear()
        txtID.Text = bm.ExecuteScalar("select isnull(max(" & SubId & "),0)+1 from " & TableName)
        'If txtID.Text = "" Then txtID.Text = "1"

        CurrentBal.Content = ""
        LastPayment.Content = ""
        LastPaymentValue.Content = ""



        receiver_address_country.SelectedValue = "EG"
        CurrencyId_LostFocus(Nothing, Nothing)


        receiver_address_country.SelectedValue = "EG"
        receiver_address_governate.Text = "الإسكندرية"
        receiver_address_regionCity.Text = "الإسكندرية"

        txtName.Focus()
    End Sub

    Private Sub btnDelete_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        If bm.ShowDeleteMSG() Then
            If Val(bm.ExecuteScalar("select dbo.GetSubAccUsingCount(" & 1 & ",'" & txtID.Text.Trim & "')")) > 0 Then
                bm.ShowMSG("غير مسموح بمسح حساب عليه حركات")
                Exit Sub
            End If
            bm.ExecuteNonQuery("delete from " & TableName & " where " & SubId & "='" & txtID.Text.Trim & "'")
            btnNew_Click(sender, e)
        End If
    End Sub

    Private Sub btnPrevios_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnPrevios.Click
        bm.NextPrevious(New String() {SubId}, New String() {txtID.Text}, "Back", dt)
        If dt.Rows.Count = 0 Then Return
        FillControls()
    End Sub
    Dim lv As Boolean = False

    Private Sub txtID_LostFocus(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtID.LostFocus
        If lv Then
            Return
        End If
        lv = True

        bm.DefineValues()
        Dim dt As New DataTable
        bm.RetrieveAll(New String() {SubId}, New String() {txtID.Text.Trim}, dt)
        If dt.Rows.Count = 0 Then
            Dim s As String = txtID.Text
            ClearControls()
            txtID.Text = s
            txtName.Focus()
            lv = False
            Return
        End If
        FillControls()
        lv = False
        txtName.SelectAll()
        txtName.Focus()
        txtName.SelectAll()
        txtName.Focus()
        'txtName.Text = dt(0)("Name")
    End Sub

    Private Sub CountryId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles CountryId.KeyUp
        bm.ShowHelp("Countries", CountryId, CountryName, e, "select cast(Id as varchar(100)) Id,Name from Countries", "Countries")
    End Sub

    Private Sub CityId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles CityId.KeyUp
        bm.ShowHelp("Cities", CityId, CityName, e, "select cast(Id as varchar(100)) Id,Name from Cities where CountryId=" & CountryId.Text.Trim, "Cities", {"CountryId"}, {Val(CountryId.Text)})
    End Sub

    Private Sub AreaId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles AreaId.KeyUp
        bm.ShowHelp("Areas", AreaId, AreaName, e, "select cast(Id as varchar(100)) Id,Name from Areas where CountryId=" & CountryId.Text.Trim & " and CityId=" & CityId.Text, "Areas", {"CountryId", "CityId"}, {Val(CountryId.Text), Val(CityId.Text)})
    End Sub

    Private Sub txtID_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles txtID.KeyDown, CountryId.KeyDown, CityId.KeyDown, AreaId.KeyDown, AccNo.KeyDown, EmpId.KeyDown, EmpId2.KeyDown
        bm.MyKeyPress(sender, e)
    End Sub


    Private Sub txtID_KeyPress2(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles Bal0.KeyDown, DescPerc.KeyDown, MainBal0.KeyDown, Exchange.KeyDown
        bm.MyKeyPress(sender, e, True)
    End Sub



    'Private Sub MyBase_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
    '    If Not btnSave.Enabled Then Exit Sub
    '    Select Case bm.RequestDelete
    '        Case BasicMethods.CloseState.Yes
    '            
    '            btnSave_Click(Nothing, Nothing)
    '            If Not AllowClose Then e.Cancel = True
    '        Case BasicMethods.CloseState.No

    '        Case BasicMethods.CloseState.Cancel
    '            e.Cancel = True
    '    End Select
    'End Sub



    Private Sub CountryId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles CountryId.LostFocus
        bm.LostFocus(CountryId, CountryName, "select Name from Countries where Id=" & CountryId.Text.Trim())
        CityId_LostFocus(Nothing, Nothing)
    End Sub

    Private Sub CityId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles CityId.LostFocus
        bm.LostFocus(CityId, CityName, "select Name from Cities where CountryId=" & CountryId.Text.Trim & " and Id=" & CityId.Text.Trim())
        AreaId_LostFocus(Nothing, Nothing)
    End Sub

    Private Sub AreaId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles AreaId.LostFocus
        bm.LostFocus(AreaId, AreaName, "select Name from Areas where CountryId=" & CountryId.Text.Trim & " and CityId=" & CityId.Text.Trim & " and Id=" & AreaId.Text.Trim())
    End Sub

    Private Sub AccNo_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles AccNo.LostFocus
        bm.AccNoLostFocus(AccNo, AccName, , 1, ,, True)
    End Sub

    Private Sub AccNo_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles AccNo.KeyUp
        bm.AccNoShowHelp(AccNo, AccName, e, , 1, ,, True)
    End Sub


    Private Sub LoadResource()
        btnSave.SetResourceReference(ContentProperty, "Save")
        btnDelete.SetResourceReference(ContentProperty, "Delete")
        btnNew.SetResourceReference(ContentProperty, "New")

        btnFirst.SetResourceReference(ContentProperty, "First")
        btnNext.SetResourceReference(ContentProperty, "Next")
        btnPrevios.SetResourceReference(ContentProperty, "Previous")
        btnLast.SetResourceReference(ContentProperty, "Last")

        lblId.SetResourceReference(ContentProperty, "Id")
        lblName.SetResourceReference(ContentProperty, "Name")
        lblAccNo.SetResourceReference(ContentProperty, "AccNo")
        lblAddress0.SetResourceReference(ContentProperty, "Address")
        lblAppartment.SetResourceReference(ContentProperty, "Appartment")
        lblBal0.SetResourceReference(ContentProperty, "Bal0")
        lblCountryId.SetResourceReference(ContentProperty, "CountryId")
        lblCityId.SetResourceReference(ContentProperty, "CityId")
        lblAreaId.SetResourceReference(ContentProperty, "AreaId")
        lblDescPerc.SetResourceReference(ContentProperty, "DescPerc")
        lblFloor.SetResourceReference(ContentProperty, "Floor")
        lblMobile.SetResourceReference(ContentProperty, "Mobile")
        lblTel.SetResourceReference(ContentProperty, "Tel")
    End Sub

    Private Sub txtID_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles txtID.KeyUp
        If bm.ShowHelpCustomers(txtID, txtName, e) Then
            txtID_LostFocus(sender, Nothing)
        End If
    End Sub

    Private Sub CurrencyId_LostFocus(sender As Object, e As RoutedEventArgs) Handles CurrencyId.LostFocus
        Try
            Exchange.Text = bm.ExecuteScalar("select dbo.GetCurrencyExchange(0,0," & CurrencyId.SelectedValue.ToString & ",0,getdate())")
        Catch ex As Exception
        End Try
    End Sub

    Private Sub MainBal0_TextChanged(sender As Object, e As TextChangedEventArgs) Handles MainBal0.TextChanged, Exchange.TextChanged
        Bal0.Text = Val(MainBal0.Text) * Val(Exchange.Text)
    End Sub

    Public Sub Ban_Checked(sender As Object, e As RoutedEventArgs) Handles Ban.Checked, Ban.Unchecked, Ban2.Checked, Ban2.Unchecked, Ban3.Checked, Ban3.Unchecked
        If sender.IsChecked Then
            sender.Foreground = System.Windows.Media.Brushes.Red
            sender.FontWeight = FontWeights.ExtraBold
        Else
            sender.Foreground = System.Windows.Media.Brushes.Black
            sender.FontWeight = FontWeights.Normal
        End If
    End Sub


    Private Sub EmpId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles EmpId.LostFocus
        bm.LostFocus(EmpId, EmpName, "select " & Resources.Item("CboName") & " Name from Employees where Id=" & EmpId.Text.Trim() & " and Stopped=0")
    End Sub

    Private Sub EmpId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles EmpId.KeyUp
        bm.ShowHelp("الموظفين", EmpId, EmpName, e, "select cast(Id as varchar(100)) Id," & Resources.Item("CboName") & " Name from Employees where Stopped=0")
    End Sub

    Private Sub EmpId2_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles EmpId2.LostFocus
        bm.LostFocus(EmpId2, EmpName2, "select " & Resources.Item("CboName") & " Name from Employees where Id=" & EmpId2.Text.Trim() & " and Stopped=0")
    End Sub

    Private Sub EmpId2_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles EmpId2.KeyUp
        bm.ShowHelp("الموظفين", EmpId2, EmpName2, e, "select cast(Id as varchar(100)) Id," & Resources.Item("CboName") & " Name from Employees where Stopped=0")
    End Sub

    Private Sub CashierId_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles CashierId.KeyUp
        bm.ShowHelp("Employees", CashierId, CashierName, e, "select cast(Id as varchar(100)) Id," & Resources.Item("CboName") & " Name from Employees where Doctor=0 and Stopped=0 and Cashier=1")
    End Sub

    Private Sub CashierId_LostFocus(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles CashierId.LostFocus
        bm.LostFocus(CashierId, CashierName, "select " & Resources.Item("CboName") & " Name from Employees where Doctor=0 and Id=" & CashierId.Text.Trim() & " and Stopped=0 and Cashier=1")
    End Sub

    Dim DontClear As Boolean = False
    Dim AllowSave As Boolean = False
    Private Sub BtnMonthlyPayment_Click(sender As Object, e As RoutedEventArgs) Handles btnMonthlyPayment.Click
        If Val(MonthlyPayment.Text) = 0 Then
            bm.ShowMSG("برجاء تحديد " & lblMonthlyPayment.Content)
            Return
        End If

        If Val(MonthlyPaymentDay.Text) < 1 OrElse Val(MonthlyPaymentDay.Text) > 28 Then
            bm.ShowMSG("برجاء تحديد " & lblMonthlyPaymentDay.Content & " بين 1 و 28")
            Return
        End If

        DontClear = True
        If btnSave.IsEnabled AndAlso btnSave.Visibility = Visibility.Visible Then
            btnSave_Click(sender, e)
        Else
            AllowSave = True
        End If
        DontClear = False
        If Not AllowSave Then Return

        Dim rpt As New ReportViewer
        rpt.Header = CType(Parent, Page).Title
        rpt.paraname = New String() {"@Id", "Header"}
        rpt.paravalue = New String() {Val(txtID.Text), CType(Parent, Page).Title}
        rpt.Rpt = "CustomerMonthlyPayment.rpt"
        rpt.Show()
    End Sub

    Private Sub BtnRpt_Click(sender As Object, e As RoutedEventArgs) Handles btnRpt.Click
        Dim rpt As New ReportViewer
        Dim RPTFlag1 As Integer = 3
        Dim title As String = ""
        If TypeOf (Parent) Is Page Then
            title = CType(Parent, Page).Title.Trim()
        ElseIf TypeOf (Parent) Is Window Then
            title = CType(Parent, Window).Title.Trim()
        End If
        rpt.paraname = New String() {"@MainAccNo", "MainAccName", "@SubAccNo", "SubAccName", "@FromDate", "@ToDate", "Header", "@Detailed", "@DetailedInvoice", "@LinkFile", "@ToId", "@RPTFlag1", "@RPTFlag2", "@ActiveOnly", "@HasBalOnly", "@WindowId", "@CostCenterId", "@CostCenterSubId", "@FromMainAccNo", "@ToMainAccNo"}
        rpt.paravalue = New String() {AccNo.Text, "", Val(txtID.Text), txtName.Text, "2000-1-1", bm.MyGetDate(), title & " ", 1, 0, 1, Val(txtID.Text), 3, 0, 1, 0, 0, 0, 0, AccNo.Text, AccNo.Text}
        rpt.Rpt = "AccountMotion.rpt"
        rpt.Show()
    End Sub

    Private Sub Ins1_Checked(sender As Object, e As RoutedEventArgs) Handles Ins1.Checked
        Ins10.IsChecked = False
    End Sub

    Private Sub Ins10_Checked(sender As Object, e As RoutedEventArgs) Handles Ins10.Checked
        Ins1.IsChecked = False
    End Sub

    Private Sub Ins2_Checked(sender As Object, e As RoutedEventArgs) Handles Ins2.Checked
        Ins20.IsChecked = False
    End Sub

    Private Sub Ins20_Checked(sender As Object, e As RoutedEventArgs) Handles Ins20.Checked
        Ins2.IsChecked = False
    End Sub

    Private Sub Ins3_Checked(sender As Object, e As RoutedEventArgs) Handles Ins3.Checked
        Ins30.IsChecked = False
    End Sub

    Private Sub Ins30_Checked(sender As Object, e As RoutedEventArgs) Handles Ins30.Checked
        Ins3.IsChecked = False
    End Sub

    Private Sub WFH1_LayoutError(sender As Object, e As LayoutExceptionEventArgs) Handles WFH1.LayoutError
        e.ThrowException = False
    End Sub

    Private Sub WFH2_LayoutError(sender As Object, e As LayoutExceptionEventArgs) Handles WFH2.LayoutError
        e.ThrowException = False
    End Sub

    Private Sub txtName_TextChanged(sender As Object, e As TextChangedEventArgs) Handles txtName.TextChanged
        receiver_name.Text = txtName.Text
    End Sub

    Private Sub Person_KeyDown(ByVal sender As Object, ByVal e As System.Windows.Input.KeyEventArgs) Handles Person.KeyUp
        bm.ShowHelp(sender.Name, sender, sender, e, "select distinct " & sender.Name & " Id," & sender.Name & " Name from " & TableName & " where " & sender.Name & "<>''")
    End Sub

    Private Sub btnWhatsApp_Click(sender As Object, e As RoutedEventArgs) Handles btnWhatsApp.Click
        SendWhatsApp(Tel)
    End Sub
    Private Sub btnWhatsApp2_Click(sender As Object, e As RoutedEventArgs) Handles btnWhatsApp2.Click
        SendWhatsApp(Mobile)
    End Sub
    Sub SendWhatsApp(txt As TextBox)
        bm.ExecuteNonQuery("update Statics set WhatsAppStr ='" & WhatsApp.Text.Trim.Replace("'", "''") & "'")
        bm.SendWhatsAppLocal(txt.Text, WhatsApp.Text.Trim)
        If TypeOf (Parent) Is MyPage Then
            If TypeOf (CType(Parent, MyPage).Parent) Is MyWindow Then
                CType(CType(Parent, MyPage).Parent, MyWindow).Activate()
            End If
        End If
    End Sub
End Class
