Imports System.Windows.Forms

Public Class Form_Alert
    Dim bm As New BasicMethods

    Dim _MyWindowToBeShown As New Controls.UserControl

    Public Enum enmAction
        wait
        start
        close
    End Enum

    Public Enum enmType
        Success
        Warning
        Errorr
        Info
    End Enum

    Private action As enmAction
    Private x, y As Integer

    Private Sub pictureBox2_Click(sender As Object, e As EventArgs) Handles pictureBox2.Click
        timer1.Interval = 1
        action = enmAction.close
    End Sub

    Private Sub timer1_Tick(sender As Object, e As EventArgs) Handles timer1.Tick
        Select Case action
            Case enmAction.wait
                timer1.Interval = 3600000
                action = enmAction.close
            Case enmAction.start
                timer1.Interval = 50
                Opacity += 0.1
                If x < Location.X Then
                    Left -= 1
                ElseIf Opacity = 1 Then
                    action = Form_Alert.enmAction.wait
                End If
            Case enmAction.close
                timer1.Interval = 50
                Opacity -= 0.1
                Left -= 3
                If Opacity = 0 Then
                    Close()
                End If
        End Select
    End Sub

    Private Sub lblMsg_Click(sender As Object, e As EventArgs) Handles lblMsg.Click
        pictureBox2_Click(Nothing, Nothing)
        Dim frm As New MyWindow With {.Content = New Page With {.Content = _MyWindowToBeShown}, .Title = _MyWindowToBeShown.Tag}
        frm.Show()
    End Sub

    Public Sub showAlert(ByVal msg As String, ByVal type As enmType, MyWindowToBeShown As Controls.UserControl)
        _MyWindowToBeShown = MyWindowToBeShown
        Me.Opacity = 0.0
        Me.StartPosition = FormStartPosition.Manual
        Dim fname As String

        Dim i As Integer = 1
        fname = "alert" & i.ToString()
        Dim frm As Form_Alert = CType(System.Windows.Forms.Application.OpenForms(fname), Form_Alert)

        While Not frm Is Nothing
            i += 1
            fname = "alert" & i.ToString()
            frm = CType(System.Windows.Forms.Application.OpenForms(fname), Form_Alert)
        End While

        Me.Name = fname
        Me.x = 20 ' Screen.PrimaryScreen.WorkingArea.Width - Me.Width + 15
        Me.y = Screen.PrimaryScreen.WorkingArea.Height - Me.Height * ((i Mod 5) + 2)
        Me.Location = New System.Drawing.Point(Me.x, Me.y)


        Me.x = Screen.PrimaryScreen.WorkingArea.Width - MyBase.Width - 5

        Select Case type
            Case enmType.Success
                Me.pictureBox1.Image = My.Resources.success
                Me.BackColor = System.Drawing.Color.SeaGreen
            Case enmType.Errorr
                Me.pictureBox1.Image = My.Resources.errorr
                Me.BackColor = System.Drawing.Color.DarkRed
            Case enmType.Info
                Me.pictureBox1.Image = My.Resources.info
                Me.BackColor = System.Drawing.Color.RoyalBlue
            Case enmType.Warning
                Me.pictureBox1.Image = My.Resources.warning
                Me.BackColor = System.Drawing.Color.DarkOrange
        End Select


        Me.lblMsg.Text = msg

        Me.Show()
        Me.action = enmAction.start
        Me.timer1.Interval = 1
        Me.timer1.Start()
    End Sub

End Class