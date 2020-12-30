<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="register.aspx.cs" Inherits="Taruc_Accomodation_Systems.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap_css"/>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>



    <div class="container" style="margin-top:30px;padding-top:100px">
<div class="col-md-10 col-md-offset-1">
    <div class="panel panel-default">
  <div class="panel-heading" style="text-align:center; background-image:url(images/photo-1536566482680-fca31930a0bd.jpg);"><h3 class="panel-title">&nbsp;</h3>
      <p class="panel-title"><strong style="font-size: x-large; color: #FFFFFF;">Sign in</strong></p>
      <p class="panel-title">&nbsp;</p>
      
  </div>
  
  <div class="panel-body">
  
       <form id="form1" submitdisabledcontrols="False">
            <div class="row">
    			<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="wrap-input100 validate-input m-b-26" data-validate="First name is required">
                        <asp:TextBox ID="txtfirstname" class="input100" placeholder="First Name" runat="server"></asp:TextBox>
                        <span class="focus-input100"></span>
					</div>
				</div>
                <div class="col-xs-12 col-sm-4 col-md-4">
    				<div class="wrap-input100 validate-input m-b-22" data-validate="Middle name is required">
                         <asp:TextBox ID="txtmiddlename" class="input100" placeholder="Middle Name" runat="server"></asp:TextBox>
                        <span class="focus-input100"></span>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="wrap-input100 validate-input m-b-18" data-validate="Last name is required">
						 <asp:TextBox ID="txtlastname" class="input100" placeholder="Last Name" runat="server"></asp:TextBox>
                        <span class="focus-input100"></span>
					</div>
				</div>
			</div>
			<div class="wrap-input100 validate-input m-b-14" data-validate="Username is required">
				<asp:TextBox ID="txtusername" class="input100"  placeholder="Prefered Username" runat="server"></asp:TextBox>
                 <span class="focus-input100"></span>
			</div>
                <div class="wrap-input100 validate-input m-b-10" data-validate="Email is required">
				<asp:TextBox ID="txtemail" class="input100" TextMode="Email" placeholder="Email Address" runat="server"></asp:TextBox>
                <span class="focus-input100"></span>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="wrap-input100 validate-input m-b-6" data-validate="Password is required">
						<asp:TextBox ID="txtpassword" class="input100" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                        <span class="focus-input100"></span>
					</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <div class="wrap-input100 validate-input m-b-2" data-validate="Password is required">
						<asp:TextBox ID="txtconfirmpassword" class="input100" TextMode="Password" placeholder="Confirm Password" runat="server"></asp:TextBox>
                        <span class="focus-input100"></span>
					</div>
				</div>
			  </div>
           </div>                      
                              
    <div class="container-login100-form-btn"> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btnregister" class="login100-form-btn" runat="server" Text="Register" BackColor="White" BorderStyle="Solid" ForeColor="Black" style="text-align:center"/>
  </div>  
  <hr style="margin-top:10px;margin-bottom:10px;" />
 
  <div class="form-group">
                                   
                                        <div style="font-size:85%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Already have an account! <a href="login.aspx" >
                                            Login Now
                                        </a>
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblErrorMessage" runat="server" Visible="false" ForeColor="Red" CssClass="ControlWidth"></asp:Label><br />

                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblSuccessMessage" runat="server" Visible="false" ForeColor="Green" CssClass="ControlWidth"></asp:Label>
                                        </div>
                                    
                                </div> 
           </form> </div></div></div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
