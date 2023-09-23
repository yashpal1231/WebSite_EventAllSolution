<%@ Page Title="Event" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventManagement.aspx.cs" Inherits="EventManagement.Page.EventManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(assets/img/Images/Sound2.jpg);">
          <div class="carousel-container"> 
             <div class="carousel-content animate__animated animate__fadeInUp"> 
              <%--<h2>Welcome to <span>Company</span></h2>--%> 
                 <p>Experience crystal-clear sound with our professional audio services</p>
                 <p>We deliver exceptional sound quality for your event</p>
                 <p>Let us take care of all your audio needs and elevate your event experience</p>
              <%--<div class="text-center"><a href="" class="btn-get-started">Read More</a></div>--%> 
             </div>
           </div> 
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(assets/img/Images/Camera.jpg);">
           <div class="carousel-container"> 
            <div class="carousel-content animate__animated animate__fadeInUp"> 
              <!-- <h2>Lorem Ipsum Dolor</h2> -->
                <p>Capture the memories of your event with our expert photography services</p>
                <p>We provide high-quality photography that will last a lifetime</p>
                <p>Let our experienced photographers capture every special moment of your event</p>
              <!-- <p>Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p> -->
              <!-- <div class="text-center"><a href="" class="btn-get-started">Read More</a></div> -->
            </div> 
          </div> 
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(assets/img/Images/Dj-Party.jpg);">
           <div class="carousel-container"> 
             <div class="carousel-content animate__animated animate__fadeInUp"> 
              <!-- <h2>Sequi ea ut et est quaerat</h2> -->
                 <p>Get your party started with our professional DJ services</p>
                 <p>Experience the ultimate dance party with our expert DJ skills</p>
                 <p>Let us bring the beats to your event and keep the dance floor packed all night</p>
              <!-- <p>Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p> -->
              <!-- <div class="text-center"><a href="" class="btn-get-started">Read More</a></div> -->
             </div> 
          </div> 
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

    </div>
  </section><!-- End Hero -->
     <section id="portfolio" class="portfolio">

      <div class="container">

       <%-- <div class="row" data-aos="fade-up">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">Decoration</li>
              <li data-filter=".filter-card">Singer</li>
              <li data-filter=".filter-web">DJ</li>
			  
            </ul>
          </div>
        </div>--%>

        <div class="row portfolio-container" data-aos="fade-up">
		
            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="../assets/img/WebSiteImage/28.jpg" class="img-fluid" alt="">
          </div>
            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="../assets/img/WebSiteImage/29.jpg" class="img-fluid" alt="">
          </div>
            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="../assets/img/WebSiteImage/30.jpg" class="img-fluid" alt="">
          </div>
            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="../assets/img/WebSiteImage/31.jpg" class="img-fluid" alt="">
          </div>
		<%--<div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="../assets/img/images/Decoration.jpg" class="img-fluid" alt="">
            <!-- <div class="portfolio-info"> -->
              <!-- <h4>App 1</h4> -->
              <!-- <p>App</p> -->
              <!-- <a href="assets/img/images/DjMan-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a> -->
              <!-- <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
            <!-- </div> -->
          </div>
		  <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/images/Decoration3.jpg" class="img-fluid" alt="">
            <!-- <div class="portfolio-info"> -->
              <!-- <h4>App 1</h4> -->
              <!-- <p>App</p> -->
              <!-- <a href="assets/img/images/DjMan-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a> -->
              <!-- <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
            <!-- </div> -->
          </div>

         
          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/images/DJ5.jpg" class="img-fluid" alt="">
            <!-- <div class="portfolio-info"> -->
              <!-- <h4>Web 3</h4> -->
              <!-- <p>Web</p> -->
              <!-- <a href="assets/img/images/DjMan-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a> -->
              <!-- <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
            <!-- </div> -->
          </div>
		  <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/images/Dj3.jpg" class="img-fluid" alt="">
            <!-- <div class="portfolio-info"> -->
              <!-- <h4>Web 3</h4> -->
              <!-- <p>Web</p> -->
              <!-- <a href="assets/img/images/DjMan-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a> -->
              <!-- <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
            <!-- </div> -->
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/images/Dj-Party.jpg" class="img-fluid" alt="">
            <!-- <div class="portfolio-info"> -->
              <!-- <h4>App 2</h4> -->
              <!-- <p>App</p> -->
              <!-- <a href="assets/img/portfolio/portfolio-3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 2"><i class="bx bx-plus"></i></a> -->
              <!-- <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
            <!-- </div> -->
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/images/Singer2.jpg" class="img-fluid" alt="">
            <!-- <div class="portfolio-info"> -->
              <!-- <h4>Card 2</h4> -->
              <!-- <p>Card</p> -->
              <!-- <a href="assets/img/portfolio/portfolio-4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 2"><i class="bx bx-plus"></i></a> -->
              <!-- <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
            <!-- </div> -->
          </div>
		

         
         


          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/images/Sound2.jpg" class="img-fluid" alt="">
            <!-- <div class="portfolio-info"> -->
              <!-- <h4>Card 1</h4> -->
              <!-- <p>Card</p> -->
              <!-- <a href="assets/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 1"><i class="bx bx-plus"></i></a> -->
              <!-- <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
            <!-- </div> -->
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/images/Singer.jpg" class="img-fluid" alt="">
            
            <!-- <div class="portfolio-info"> -->
              <!-- <h4>Card 3</h4> -->
              <!-- <p>Card</p> -->
              <!-- <a href="assets/img/portfolio/portfolio-8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 3"><i class="bx bx-plus"></i></a> -->
              <!-- <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
            <!-- </div> -->
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/images/Music2.jpg" class="img-fluid" alt="">
            <!-- <div class="portfolio-info"> -->
              <!-- <h4>Web 3</h4> -->
              <!-- <p>Web</p> -->
              <!-- <a href="assets/img/portfolio/portfolio-9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a> -->
              <!-- <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
            <!-- </div> -->
          </div>
		  
		  
		  
		   <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/images/Dj1.jpg" class="img-fluid" alt="">
            <!-- <div class="portfolio-info"> -->
              <!-- <h4>Web 3</h4> -->
              <!-- <p>Web</p> -->
              <!-- <a href="assets/img/portfolio/portfolio-9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a> -->
              <!-- <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a> -->
            <!-- </div> -->
          </div>
		  
		 --%>

        </div>

      </div>
    </section><!-- End Portfolio Section -->

</asp:Content>
