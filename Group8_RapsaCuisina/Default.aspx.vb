Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        ' Redirect to the login page when the button is clicked
        Response.Redirect("Login.aspx")
    End Sub


    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        ' Your server-side logic when the button is clicked
        Response.Redirect("SignUp.aspx")
    End Sub


End Class