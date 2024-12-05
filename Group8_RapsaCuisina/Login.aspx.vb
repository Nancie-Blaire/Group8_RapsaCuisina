Public Class Login
    Inherits Page

    Protected Sub LoginButton_Click(sender As Object, e As EventArgs)
        ' Retrieve values from textboxes
        Dim username As String = UsernameTextBox.Text
        Dim password As String = PasswordTextBox.Text

        ' Example simple validation (you should replace this with actual validation logic)
        If username = "admin" AndAlso password = "password123" Then
            ' Redirect to a successful page or display success message
            Response.Write("Login successful!")
        Else
            ' Handle invalid login (you can show an error message here)
            Response.Write("Invalid username or password. Please try again.")
        End If
    End Sub
End Class
