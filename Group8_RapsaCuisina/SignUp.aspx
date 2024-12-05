<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignUp.aspx.vb" Inherits="Group8_RapsaCuisina.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style>
        /* Your existing styles remain unchanged */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            position: relative;
        }
        .container {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            justify-content: center;
        }
        .form-container {
            width: 300px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            transition: all 0.3s ease;
        }
        .form-container input {
            width: 97%;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 10px;
            margin-bottom: 5px; /* Adjusted for spacing with the labels */
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .form-container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
        }
        .form-container .error-label {
            color: red;
            font-size: 12px;
            margin-bottom: 10px;
            display: block;
        }

          .name {
            position: absolute;
            top: 20px;
            left: 30px;
            font-size: 24px;
            font-weight: bold;
        }

                .image {
            width: 100%; /* Ensure the image takes up full width */
            max-width: 350px; /* Limit the max-width of the image */
            height: auto; /* Maintain the aspect ratio */
            margin-right: 200px;
            transition: all 0.3s ease;
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .image {
                max-width: 70%; /* Scale the image on smaller screens */
                margin-right: 0;
                margin-bottom: 20px;
            }

            .form-container {
                width: 80%; /* Scale the form container */
                margin: 0 auto;
                padding: 15px;
            }

            .container {
                flex-direction: column; /* Stack the form and image vertically */
                justify-content: center;
                align-items: center;
            }

            .name {
                top: 20px;
                left: 20px;
                font-size: 22px; /* Reduce font size */
            }

            .form-container input {
                font-size: 14px; /* Reduce input font size */
            }
        }

        @media (max-width: 480px) {
            .name {
                font-size: 20px; /* Make the name even smaller */
            }

            .form-container {
                width: 100%; /* Form takes full width on small screens */
                padding: 10px;
            }

            .form-container input {
                font-size: 12px; /* Further reduce font size of inputs */
            }

            .image {
                max-width: 80%; /* Make the image even smaller */
            }
        }


        /* Existing responsive styles remain unchanged */
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 class="name">RapsaCuisina</h2>
        <div class="container">
            <img src="images/cuisina.PNG" alt="Description of Image" class="image" />
            <div class="form-container">
                <h2>Sign Up</h2>

                <asp:Label runat="server" Text="Username" AssociatedControlID="TextBox1" /><br />
                <asp:TextBox runat="server" ID="TextBox1" placeholder="Enter Username" /><br />
                <asp:Label runat="server" ID="Label1" CssClass="error-label" />

                <asp:Label runat="server" Text="Email" AssociatedControlID="TextBox2" /><br />
                <asp:TextBox runat="server" ID="TextBox2" placeholder="Enter Email" /><br />
                <asp:Label runat="server" ID="Label2" CssClass="error-label" />

                <asp:Label runat="server" Text="Password" AssociatedControlID="TextBox3" /><br />
                <asp:TextBox runat="server" ID="TextBox3" TextMode="Password" placeholder="Enter Password" /><br />
                <asp:Label runat="server" ID="Label3" CssClass="error-label" />

                <asp:Label runat="server" Text="Confirm Password" AssociatedControlID="TextBox4" /><br />
                <asp:TextBox runat="server" ID="TextBox4" TextMode="Password" placeholder="Confirm Password" /><br />
                <asp:Label runat="server" ID="Label4" CssClass="error-label" />

                <asp:Button runat="server" Text="Sign Up" OnClick="SignUp_Click" />
            </div>
        </div>
    </form>
</body>
</html>
