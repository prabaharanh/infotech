<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="infotechit.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <style>
 
.container-body{
background-image: url('/images/loginbg.jpg');
padding:200px 100px 100px 100px;
width:100%;
background-size: cover;
background-repeat: no-repeat;
}

.card{
height: auto;
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}



.card-header h3{
color: white;
}



.input-group-prepend span{
width: 50px;
background-color: #0076a3;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.register_btn{
color: white;
background-color: #0076a3;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}
</style>
<div class="container-body">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Register</h3>
				
			</div>
			<div class="card-body">
				<form>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-user"></i></span>
						</div>
              <asp:TextBox ID="txtRegfirstname" placeholder="First Name" runat="server"></asp:TextBox>
            <div>
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="txtRegfirstname" ErrorMessage="Enter Firstname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-user"></i></span>
						</div>
						<asp:TextBox ID="txtReglastname" placeholder="Last Name" runat="server"></asp:TextBox>
					<div>
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtReglastname" ErrorMessage="Enter Lastname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

					</div>
           
          <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-envelope"></i></span>
						</div>
						<asp:TextBox ID="txtRegemail" placeholder="Email" runat="server"></asp:TextBox>
             <div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtRegemail" ErrorMessage="Enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
          </div>
         
            <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-user"></i></span>
						</div>
						<asp:TextBox ID="txtRegusername" placeholder="User Name" runat="server"></asp:TextBox>
              <div>
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegusername" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            </div>
           
					  <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-phone"></i></span>
						</div>
						<asp:TextBox ID="txtRegphone" placeholder="phone" runat="server"></asp:TextBox>
					</div>
            <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-key"></i></span>
						</div>
						<asp:TextBox ID="txtRegpassword" placeholder="Password" runat="server"></asp:TextBox>
					</div>
            <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-key"></i></span>
						</div>
            
						<asp:TextBox ID="txtRegcpassword" placeholder="Confirm password" runat="server"></asp:TextBox>
              <div>
                <asp:CompareValidator ID="CompareValidator" runat="server" ControlToCompare="txtRegpassword" ControlToValidate="txtRegcpassword" ErrorMessage="CompareValidator" ForeColor="Red">Passwords do not match</asp:CompareValidator>

                </div>
            </div>
          
          
					<div class="form-group">
					
            <asp:Button ID="btnLogin" runat="server" OnClick="btnRegister_Click" Text="Register" class="btn float-right register_btn" />
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Already have an account?<a href="Login.aspx">Login</a>
				</div>
				
			</div>
		</div>
	</div>
</div>
</asp:Content>
