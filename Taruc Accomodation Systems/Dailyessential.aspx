<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Dailyessential.aspx.cs" Inherits="Taruc_Accomodation_Systems.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        .mugi {
  overflow: hidden;
  background-color: #e9e9e9;
}

.mugi a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.mugi a:hover {
  background-color: #ddd;
  color: black;
}

.mugi a.active {
  background-color: #2196F3;
  color: white;
}

.mugi .search-container {
  float: right;
}

.mugi input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.mugi .search-container button {
  float: none;
  padding: 16px 16px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.mugi .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .mugi .search-container {
    float: none;
  }
  .mugi a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
   
  }
  .mugi input[type=text] {
    border: 1px solid #ccc;  
  }
}

    </style>
     <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
    
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2><strong>Room for Rent</strong></h2>
        </div>
          <div class="s003">
      
        <div class="inner-form">
        
            <div class="mugi">

               <div class="search-container">
                
                <input type="text" placeholder="Search.." name="search">
                <button type="submit"><i class="fa fa-search"></i></button>
                <br />
                  <br />
            </div>
                <br />

            </div>
        <br />
                
        

        <div class="row portfolio-container" data-aos="fade-up">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Stevia</h4>
              <p>Rm24</p>
              <a href="item details.aspx" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Orange and Assorted drink</h4>
              <p>RM 4</p>
              <a href="item details.aspx" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Face Cream</h4>
              <p>Rm 10</p>
              <a href="item details.aspx" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Face mask</h4>
              <p>RM 12</p>
              <a href="item details.aspx" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Perfume</h4>
              <p>RM 15</p>
              <a href="item details.aspx" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Oil</h4>
              <p>RM 6</p>
              <a href="item details.aspx" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>


        </div>

      </div>
    </section><!-- End Portfolio Section -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
