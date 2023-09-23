<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EventManagement.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">   
        function userValid() {
            
            var Name = document.getElementById("<%= txtName.ClientID %>").value;
           
            if (Name == '') {
                alert("Please Enter Valid  Name");
                document.getElementById("<%= txtName.ClientID %>").focus();
                return false;
            }
            var EmailId = document.getElementById("<%= txtEmailId.ClientID %>").value;
           
            var val = /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
            if (EmailId == "") {
                alert("Please Enter Valid Email Address");
                document.getElementById("<%= txtEmailId.ClientID %>").focus();
                return false;
            }
            else if (val.test(EmailId)) {
                
            }

            else {
                alert("Email should be in this form example: xyz@abc.com");
                document.getElementById("<%= txtEmailId.ClientID %>").focus();
                return false;
            }

            var Subject = document.getElementById("<%= txtSubject.ClientID %>").value;
            if (Subject == '') {
                alert("Please Enter Valid Subject");
                document.getElementById("<%= txtSubject.ClientID %>").focus();
                return false;
            }
            var MobileNo = document.getElementById("<%= txtMobileNo.ClientID %>").value;
            
            if (MobileNo == '') {
                alert("Please Enter Valid Mobile No");
                document.getElementById("<%= txtMobileNo.ClientID %>").focus();
                return false;
            }
            if (MobileNo.length != 10) {
                alert("Please Enter 10 Digit Mobile No");
                document.getElementById("<%= txtMobileNo.ClientID %>").focus();
                return false;

            }
            var Message = document.getElementById("<%= txtMessage.ClientID %>").value;
            
            if (Message == '') {
                alert("Please Enter Valid Message");
                document.getElementById("<%= txtMessage.ClientID %>").focus();
                return false;
            }
            
        }
    //write JavaScript code here    
    </script> 
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Contact</h2>
                <ol>
                    <li><a href="EventManagement.aspx">Home</a></li>
                    <li>Contact</li>
                </ol>
            </div>

        </div>
    </section>
    <!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
    <div class="map-section">
        <iframe style="border: 0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d448196.05322191946!2d76.8130292341257!3d28.643795354652603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cfd5b347eb62d%3A0x37205b715389640!2sDelhi!5e0!3m2!1sen!2sin!4v1676912483227!5m2!1sen!2sin" frameborder="0" allowfullscreen></iframe>

        <!-- <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" allowfullscreen></iframe> -->
    </div>

    <section id="contact" class="contact">
        <div class="container">

            <div class="row justify-content-center" data-aos="fade-up">

                <div class="col-lg-10">

                    <div class="info-wrap">
                        <div class="row">
                            <div class="col-lg-4 info">
                                <i class="bi bi-geo-alt"></i>
                                <h4>Location:</h4>
                                <!-- <p>A108 Adam Street<br>New York, NY 535022</p> -->
                                <p>Dehli</p>
                            </div>

                            <div class="col-lg-4 info mt-4 mt-lg-0">
                                <i class="bi bi-envelope"></i>
                                <h4>Email:</h4>
                                <p>inquiry@eventallsolutions.com<br>
                                    info@eventallsolutions.com</p>
                            </div>

                            <div class="col-lg-4 info mt-4 mt-lg-0">
                                <i class="bi bi-phone"></i>
                                <h4>Call:</h4>
                                <p>+91  98730 25449</p>

                            </div>
                        </div>
                    </div>

                </div>

            </div>

            <div class="row mt-5 justify-content-center" data-aos="fade-up">
                <div class="col-lg-10">
                    <div class="php-email-form">
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Your Name"></asp:TextBox>
                                <%--<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>--%>
                            </div>
                            <div class="col-md-6 form-group mt-3 mt-md-0">
                                <asp:TextBox ID="txtEmailId" runat="server" class="form-control" placeholder="Your Email"></asp:TextBox>
                                <%--<input type="email" class="form-control" name="email" id="email" placeholder="Your Email"  required>--%>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <asp:TextBox ID="txtSubject" runat="server" class="form-control" placeholder="Subject"></asp:TextBox>
                                <%--<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>--%>
                            </div>
                            <div class="col-md-6 form-group mt-3 mt-md-0">
                                <asp:TextBox ID="txtMobileNo" runat="server" class="form-control" placeholder="Mobile No" MaxLength="10"></asp:TextBox>
                                <%--<input type="number" class="form-control" name="number" id="number" placeholder="Mobile No" maxlength="10" required >--%>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <%--<textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>--%>
                            <asp:TextBox ID="txtMessage" runat="server" class="form-control" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <%--<div class="my-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your message has been sent. Thank you!</div>
                        </div>--%>
                        <div class="text-center ">
                            <%--<button type="submit">Send Message</button>--%>
                            <asp:Button ID="btnSubmit" Class="button"  runat="server" Text="Send Message" OnClick="btnSubmit_Click" OnClientClick="return userValid();"/>

                        </div>
                        

                    </div>
                </div>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>

            </div>

        </div>
    </section>
    <!-- End Contact Section -->
</asp:Content>
