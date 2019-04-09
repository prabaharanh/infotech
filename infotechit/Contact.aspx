<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="infotechit.WebForm2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style>

* {
  box-sizing: border-box;
}



.container {
  max-width: 1170px;
  margin-left: auto;
  margin-right: auto;
  padding: 1em;
}

ul {
  list-style: none;
  padding: 0;
}

.brand {
  text-align: center;
	font-weight: 300;
	text-transform: uppercase;
	letter-spacing: 0.1em;
}

.brand span {
  color: #ffffff;
}

.wrapper {
  box-shadow: 0 0 20px 0 rgba(57, 82, 163, 0.7);
}

.wrapper > * {
  padding: 1em;
}

/* ------------------- */
/* COMPANY INFORMATION */
/* ------------------- */

.company-info {
  background: #C3C9DD;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
}

.company-info h3,
.company-info ul {
  text-align: center;
  margin: 0 0 1rem 0;
}

/* ------- */
/* CONTACT */
/* ------- */

.contact {
  background: #dcdfea;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
}

/* ---- */
/* FORM */
/* ---- */

.contact form {
  display: grid;
  grid-template-columns: 1fr 1fr;
  grid-gap: 20px;
}

.contact form label {
  display: block;
}

.contact p {
  margin: 2px;
  display:grid;

}

.contact form .full {
  grid-column: 1 / 3;
}

.contact form button,
.contact form input,
.contact form textarea {
  width: 100%;
  padding: 1em;
  border: solid 1px #627EDC;
  border-radius: 4px;
}

.contact form textarea {
  resize: none;
}

.contact form button {
  background: #627EDC;
  border: 0;
  color: #e4e4e4;
  text-transform: uppercase;
  font-size: 14px;
  font-weight: bold;
}

.contact form button:hover,
.contact form button:focus {
  background: #3952a3;
  color: #ffffff;
  outline: 0;
  transition: background-color 2s ease-out;
}

/* ------------- */
/* MEDIA QUERIES */
/* ------------- */

@media only screen and (min-width: 700px) {
  .wrapper {
    display: grid;
    grid-template-columns: 1fr 2fr;
  }

  .wrapper > * {
    padding: 2em;
  }

  .company-info {
    border-radius: 4px 0 0 4px;
  }

  .contact {
    border-radius: 0 4px 4px 0;
  }

  .company-info h3,
  .company-info ul,
  .brand {
    text-align: left;
  }
}
    </style>
<div class="container">

	<h1 class="brand"><span>Infotech IT solutions</span></h1>

	<div class="wrapper">

		<!-- COMPANY INFORMATION -->
		<div class="company-info">
			<h3>Infotech IT solutions</h3>

			<ul>
				<li><i class="fa fa-road"></i> 28A Puriri Avenue, Greenlane, Auckland-1051</li>
				<li><i class="fa fa-phone"></i> 022 160 6306</li>
				<li><i class="fa fa-envelope"></i> info@infotechit.co.nz</li>
			</ul>
		</div>
 
		<!-- End .company-info -->

		<!-- CONTACT FORM -->
		<div class="contact">
			<h3>E-mail Us</h3>

			<form id="contact-form">

				<p>
					<label>Name</label>
					<input type="text" name="name" id="name" required>
				</p>

				<p>
					<label>Company</label>
					<input type="text" name="company" id="company">
				</p>

				<p>
					<label>E-mail Address</label>
					<input type="email" name="email" id="email" required>
				</p>

				<p>
					<label>Phone Number</label>
					<input type="text" name="phone" id="phone">
				</p>

				<p class="full">
					<label>Message</label>
					<textarea name="message" rows="5" id="message"></textarea>
				</p>

			
					<div class="button">
<i class="fa fa-paper-plane"></i><span class="send-text">
    <asp:Button ID="btnSens" runat="server" Text="Send" /></span>
</div>
		

			</form>

        <div>
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3190.8688220698646!2d174.79164511452578!3d-36.893486289714794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d0d488d519066f1%3A0x8b44f9343e67654c!2s28A+Puriri+Ave%2C+Greenlane%2C+Auckland+1051!5e0!3m2!1sen!2snz!4v1554811525957!5m2!1sen!2snz" width="700" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
      </div>
			<!-- End #contact-form -->
		</div>
		<!-- End .contact -->

	</div>
	<!-- End .wrapper -->
</div>
<!-- End .container -->
</asp:Content>
