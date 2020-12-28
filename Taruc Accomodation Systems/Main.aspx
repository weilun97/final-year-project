<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Taruc_Accomodation_Systems.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-2.jpg);">
          <div class="carousel-container">
            <div class="carousel-content animate__animated animate__fadeInUp">
              <h2>Welcome to <span>Taruc Accomodation System</span></h2>
              <p>TARUC accomodation is founded by Yeow Weilun and it is made under the TARUC to help the students and staffs problems. </p>
              <br />
              <br />
            </div>
          </div>
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(assets/img/slide/slide-4.jpg);">
          <div class="carousel-container">
            <div class="carousel-content animate__animated animate__fadeInUp">
              <h2>Services provided</h2>
              <p>We are here to provide services which is to ease the TARUC students and staffs to rent rooms and to let them to get their household daily necessities items. Our services are only for TARUC students and staffs as we priorities them only</p>
              <br />
              <br />
            </div>
          </div>
        </div>

     

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon bx bx-left-arrow" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon bx bx-right-arrow" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

    </div>
  </section><!-- End Hero -->

  <main id="main">

   
    <section id="services" class="services">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Check out <strong>our services</strong></h2>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6">
            <div class="icon-box" data-aos="fade-up">
              <div class="icon"><i class="icofont-hotel-boy-alt"></i></div>
              <h4 class="title"><a href="Room rent.aspx">Room for Rent </a></h4>
              <p class="description">We're putting up extra spare room for rent to make a little extra cash on the side and also to let the customer to live in the accomodation comfortably.</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="icofont-fruits"></i></div>
              <h4 class="title"><a href="Dailyessential.aspx">Household sales items</a></h4>
              <p class="description">We are selling usually a wide range of items is presented for sale such as clothing, appliances, and daily necessacity items</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="icofont-earth"></i></div>
              <h4 class="title">Delivery Services & More</a></h4>
              <p class="description">We do also provide delivery to your doorstep and we use our trusted courier to deliver those goods.</p>
            </div>
          </div>
         
        </div>

      </div>
    </section><!-- End Services Section -->

   

    

  </main>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   


</asp:Content>
