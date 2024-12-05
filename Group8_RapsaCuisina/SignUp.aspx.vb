Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlException

Public Class SignUp
    Inherits System.Web.UI.Page
    Protected Sub SignUp_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Clear all error messages first
        Label1.Text = ""
        Label2.Text = ""
        Label3.Text = ""
        Label4.Text = ""

        Dim isValid As Boolean = True

        ' Validate Username
        If String.IsNullOrWhiteSpace(TextBox1.Text) Then
            Label1.Text = "Username is required."
            isValid = False
        End If

        ' Validate Email
        If String.IsNullOrWhiteSpace(TextBox2.Text) Then
            Label2.Text = "Email is required."
            isValid = False
        End If

        ' Validate Password
        If String.IsNullOrWhiteSpace(TextBox3.Text) Then
            Label3.Text = "Password is required."
            isValid = False
        End If

        ' Validate Confirm Password
        If String.IsNullOrWhiteSpace(TextBox4.Text) Then
            Label4.Text = "Confirm Password is required."
            isValid = False
        End If

        ' Check if Password matches Confirm Password
        If Not String.IsNullOrWhiteSpace(TextBox3.Text) AndAlso TextBox3.Text <> TextBox4.Text Then
            Label4.Text = "Passwords do not match."
            isValid = False
        End If

        ' Stop processing if validation fails
        If Not isValid Then
            Return
        End If

        ' Proceed with database operations if validation passes
        Try
            Dim con As New SqlConnection("Data Source=DESKTOP-KSGHK2U\SQLEXPRESS;Initial Catalog=RapsaCuisina;Integrated Security=True")
            Dim cmd As New SqlCommand("SELECT * FROM signup WHERE username=@username", con)
            cmd.Parameters.AddWithValue("@username", TextBox1.Text)

            con.Open()
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            If dr.HasRows Then
                Label1.Text = "Username already exists."
                con.Close()
                Return
            End If
            con.Close()

            ' Insert data
            con.Open()
            cmd = New SqlCommand("INSERT INTO signup (username, email, password) VALUES (@username, @Email, @Password)", con)
            cmd.Parameters.AddWithValue("@username", TextBox1.Text)
            cmd.Parameters.AddWithValue("@Email", TextBox2.Text)
            cmd.Parameters.AddWithValue("@Password", TextBox3.Text)
            cmd.ExecuteNonQuery()
            con.Close()

            ' Redirect to Default page on success
            Response.Redirect("MainPage.aspx")
        Catch ex As Exception
            ' Handle database connection or other errors
            Label1.Text = "An error occurred. Please try again later."
        End Try
    End Sub


End Class
