Imports System.Data
Imports System.IO

Public Class Statics

    Dim bm As New BasicMethods

    Private Sub Statics_Loaded(sender As Object, e As RoutedEventArgs) Handles Me.Loaded
        If bm.TestIsLoaded(Me) Then Return

        'If Not Md.Manager Then
        'lblPoneComment.Visibility = Visibility.Hidden
        'PoneComment.Visibility = Visibility.Hidden
        'lblPoneHeader.Visibility = Visibility.Hidden
        'PoneHeader.Visibility = Visibility.Hidden
        'End If

        Dim dt As DataTable = bm.ExecuteAdapter("select PoneComment,PoneHeader,CompanyName,CompanyTel,WhatsAppLink,gmail,gmailPassword,whatsmateINSTANCE_ID,whatsmateCLIENT_ID,whatsmateCLIENT_SECRET,smsmisrSenderID,smsmisrUsername,smsmisrPassword,clientIdPreProd,ClientSecretPreProd,ClientSecret2PreProd,clientId,ClientSecret,ClientSecret2 from Statics")
        If dt.Rows.Count > 0 Then
            PoneComment.Text = dt.Rows(0)("PoneComment").ToString
            PoneHeader.Text = dt.Rows(0)("PoneHeader").ToString
            CompanyName.Text = dt.Rows(0)("CompanyName").ToString
            CompanyTel.Text = dt.Rows(0)("CompanyTel").ToString
            WhatsAppLink.Text = dt.Rows(0)("WhatsAppLink").ToString
            gmail.Text = dt.Rows(0)("gmail").ToString
            gmailPassword.Text = dt.Rows(0)("gmailPassword").ToString
            whatsmateINSTANCE_ID.Text = dt.Rows(0)("whatsmateINSTANCE_ID").ToString
            whatsmateCLIENT_ID.Text = dt.Rows(0)("whatsmateCLIENT_ID").ToString
            whatsmateCLIENT_SECRET.Text = dt.Rows(0)("whatsmateCLIENT_SECRET").ToString
            clientIdPreProd.Text = dt.Rows(0)("clientIdPreProd").ToString
            ClientSecretPreProd.Text = dt.Rows(0)("ClientSecretPreProd").ToString
            ClientSecret2PreProd.Text = dt.Rows(0)("ClientSecret2PreProd").ToString
            clientId.Text = dt.Rows(0)("clientId").ToString
            ClientSecret.Text = dt.Rows(0)("ClientSecret").ToString
            ClientSecret2.Text = dt.Rows(0)("ClientSecret2").ToString
        End If

        bm.GetImage("Statics", New String() {}, New String() {}, "Logo", Image1)

        BarcodePrinter.Items.Clear()
        PonePrinter.Items.Clear()
        PonePrinter2.Items.Clear()
        BarcodePrinter.Items.Add("")
        PonePrinter.Items.Add("")
        PonePrinter2.Items.Add("")
        For i As Integer = 0 To System.Drawing.Printing.PrinterSettings.InstalledPrinters.Count - 1
            BarcodePrinter.Items.Add(System.Drawing.Printing.PrinterSettings.InstalledPrinters(i))
            PonePrinter.Items.Add(System.Drawing.Printing.PrinterSettings.InstalledPrinters(i))
            PonePrinter2.Items.Add(System.Drawing.Printing.PrinterSettings.InstalledPrinters(i))
        Next

        BarcodePrinter.Text = Md.BarcodePrinter
        PonePrinter.Text = Md.PonePrinter
        PonePrinter2.Text = Md.PonePrinter2

    End Sub


    Private Sub btnSave_Click(sender As Object, e As RoutedEventArgs) Handles btnSave.Click

        If Md.Manager Then
            bm.ExecuteNonQuery("update Statics set PoneComment='" & PoneComment.Text.Replace("'", "''") & "',PoneHeader='" & PoneHeader.Text.Replace("'", "''") & "',CompanyName='" & CompanyName.Text.Replace("'", "''") & "',CompanyTel='" & CompanyTel.Text.Replace("'", "''") & "',WhatsAppLink='" & WhatsAppLink.Text.Replace("'", "''") & "',gmail='" & gmail.Text.Replace("'", "''") & "',gmailPassword='" & gmailPassword.Text.Replace("'", "''") & "',whatsmateINSTANCE_ID='" & whatsmateINSTANCE_ID.Text.Replace("'", "''") & "',whatsmateCLIENT_ID='" & whatsmateCLIENT_ID.Text.Replace("'", "''") & "',whatsmateCLIENT_SECRET='" & whatsmateCLIENT_SECRET.Text.Replace("'", "''") & "',clientIdPreProd='" & clientIdPreProd.Text.Replace("'", "''") & "',ClientSecretPreProd='" & ClientSecretPreProd.Text.Replace("'", "''") & "',ClientSecret2PreProd='" & ClientSecret2PreProd.Text.Replace("'", "''") & "',clientId='" & clientId.Text.Replace("'", "''") & "',ClientSecret='" & ClientSecret.Text.Replace("'", "''") & "',ClientSecret2='" & ClientSecret2.Text.Replace("'", "''") & "'")
        End If

        bm.SaveImage("Statics", New String() {}, New String() {}, "Logo", Image1)

        Try
            Md.BarcodePrinter = BarcodePrinter.Text
            SaveSetting("OMEGA", "Settings", "BarcodePrinter", BarcodePrinter.Text)
            Dim st As New StreamWriter("BarcodePrinter.dll")
            st.WriteLine(BarcodePrinter.Text)
            st.Flush()
            st.Close()
        Catch ex As Exception
        End Try

        Try
            Md.PonePrinter = PonePrinter.Text
            SaveSetting("OMEGA", "Settings", "PonePrinter", PonePrinter.Text)
            Dim st As New StreamWriter("PonePrinter.dll")
            st.WriteLine(PonePrinter.Text)
            st.Flush()
            st.Close()
        Catch ex As Exception
        End Try

        Try
            Md.PonePrinter2 = PonePrinter2.Text
            SaveSetting("OMEGA", "Settings", "PonePrinter2", PonePrinter2.Text)
            Dim st As New StreamWriter("PonePrinter2.dll")
            st.WriteLine(PonePrinter2.Text)
            st.Flush()
            st.Close()
        Catch ex As Exception
        End Try

        bm.ShowMSG("تم الحفظ بنجاح")
    End Sub

    Private Sub btnSetImage_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnSetImage.Click
        bm.SetImage(Image1, False)
    End Sub

    Private Sub btnSetNoImage_Click(ByVal sender As System.Object, ByVal e As System.Windows.RoutedEventArgs) Handles btnSetNoImage.Click
        bm.SetNoImage(Image1, False, True)
    End Sub


End Class
