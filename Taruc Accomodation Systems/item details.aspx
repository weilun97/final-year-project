<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="item details.aspx.cs" Inherits="Taruc_Accomodation_Systems.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">
        
        <div class="row">

          <div class="col-lg-8" data-aos="fade-right">
            <div class="owl-carousel portfolio-details-carousel">
              <img src="assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
              <img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
              <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
            </div>
          </div>

          <div class="col-lg-4 portfolio-info" data-aos="fade-left">
            <h3>Stevia</h3>
            <ul>
              <li><strong>Price</strong>: Rm 24</li>
              <li><strong>Exp date</strong>: 27 June 2022</li>
              <li><strong>Volume/mass</strong>: 80g</li>
        
            </ul>

            <p>
            Stevia is a sweetener and sugar substitute derived from the leaves of the plant species Stevia rebaudiana, native to Brazil and Paraguay. The active compounds are steviol glycosides, which have 30 to 150 times the sweetness of sugar, are heat-stable, pH-stable, and not fermentable.
            </p>
              <button type="button"><a href="cart.aspx">Add to cart</a></button>

          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
