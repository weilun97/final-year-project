<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Taruc_Accomodation_Systems.userprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="limiter" style="background-color: #F6F6F6" >
		
		<div class="container-login100" style="background-position: center center; background-image: none; background-repeat: no-repeat; background-attachment: fixed; background-size:100%; background-color: #FFFFFF;">
			<div class="wrap-login100" style ="border: thin solid #000000; opacity:10; background-image: none;">
				<div class="auto-style1" style="background-image: url(images/photo-1536566482680-fca31930a0bd.jpg);">
					<span class="login100-form-title-1">
						Login
					</span>
				</div>

				<form class="login100-form validate-form" submitdisabledcontrols="False">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<asp:TextBox ID="txtusername" class="input100" placeholder="Enter your username" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<asp:TextBox ID="txtpassword" TextMode="Password" class="input100" placeholder="Enter your password" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me"/>
							<label class="label-checkbox100" for="ckb1" style="text-align:center">
								Remember me
							</label><br />
						</div>
<br />
						<div>
							<a href="#" class="txt1" style="text-align:center" onclick="window.open('forgotpassword.aspx','FP','width=500,height=150,top=300,left=500,fullscreen=no,resizeable=0');">
								Forgot Password?
							</a><br />
						</div>
					</div>

					<div class="container-login100-form-btn">
						<asp:Button ID="btnlogin" class="login100-form-btn" runat="server" Text="Login" BackColor="White" BorderStyle="Solid" ForeColor="Black" OnClick="btnlogin_Click" />
					    <br />
						<br />
						<br />
						<br />
						<br />

					<div style="font-size:85%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Don't have an account? Register now for free <a href="register.aspx" >
                                            Register
                                        </a>
					</div>
						</div>
				</div>
			</div>
		</div>
</body>
</html>
