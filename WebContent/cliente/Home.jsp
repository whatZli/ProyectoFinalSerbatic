<%@page import="model.Productos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelDAO.ProductosDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-fluid">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.7/css/swiper.min.css">
	<div class="swiper-container">
		<div class="swiper-wrapper">

			<%-- 			<% ArrayList<Productos> lp = ProductosDAO.devolverTresProductos();  --%>
			<!-- // 			for(Productos p: lp){ -->
			<%-- 			%> --%>

			<!-- 			<div class="swiper-slide"> -->
			<!-- 				<div class="slide-inner"> -->
			<!-- 					<img -->
			<%-- 						src="<% out.println(p.getRutaImagen());%>"> --%>
			<!-- 				</div> -->
			<!-- 			</div> -->
			<%-- 			<% } %> --%>


			<div class="swiper-slide">
				<div class="slide-inner"
					style="background-image: url(https://jpl.a.bigcontent.io/v1/static/desktop-top-and-bottom-banner-ddd2b4cdbab2dc724f50dc99985714fd)"></div>
			</div>
			<div class="swiper-slide">
				<div class="slide-inner"
					style="background-image: url(https://jpl.a.bigcontent.io/v1/static/desktop-top-and-bottom-banner-c8fcf2ec4c6ca61e278215923ba40cd2)"></div>
			</div>
		</div>
		<div class="swiper-button-next swiper-button-white"></div>
		<div class="swiper-button-prev swiper-button-white"></div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.7/js/swiper.min.js"></script>
	<script>
		var interleaveOffset = 0.5;

		var swiperOptions = {
			loop : true,
			speed : 1000,
			grabCursor : true,
			autoplay : true,
			watchSlidesProgress : true,
			mousewheelControl : true,
			keyboardControl : true,
			navigation : {
				nextEl : ".swiper-button-next",
				prevEl : ".swiper-button-prev"
			},
			on : {
				progress : function() {
					var swiper = this;
					for (var i = 0; i < swiper.slides.length; i++) {
						var slideProgress = swiper.slides[i].progress;
						var innerOffset = swiper.width * interleaveOffset;
						var innerTranslate = slideProgress * innerOffset;
						swiper.slides[i].querySelector(".slide-inner").style.transform = "translate3d("
								+ innerTranslate + "px, 0, 0)";
					}
				},
				touchStart : function() {
					var swiper = this;
					for (var i = 0; i < swiper.slides.length; i++) {
						swiper.slides[i].style.transition = "";
					}
				},
				setTransition : function(speed) {
					var swiper = this;
					for (var i = 0; i < swiper.slides.length; i++) {
						swiper.slides[i].style.transition = speed + "ms";
						swiper.slides[i].querySelector(".slide-inner").style.transition = speed
								+ "ms";
					}
				}
			}
		};

		var swiper = new Swiper(".swiper-container", swiperOptions);
	</script>
 

	<!-- Page Content -->
	<section class="py-5 text-center">
		<div class="container">
			<h2 class="text-center">Luckmoshy`s Services</h2>
			<p class="text-muted mb-5 text-center">There are many variations
				of passages of Lorem Ipsum available, but the majority have suffered
				alteration in some form.</p>
			<div class="row">
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-magic-wand"></use>
            </svg>
					<h6>Ex cupidatat eu</h6>
					<p class="text-muted">Ex cupidatat eu officia consequat
						incididunt labore occaecat ut veniam labore et cillum id et.</p>
				</div>
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-heart"></use>
            </svg>
					<h6>Tempor aute occaecat</h6>
					<p class="text-muted">Tempor aute occaecat pariatur esse aute
						amet.</p>
				</div>
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-rocket"></use>
            </svg>
					<h6>Voluptate ex irure</h6>
					<p class="text-muted">Voluptate ex irure ipsum ipsum ullamco
						ipsum reprehenderit non ut mollit commodo.</p>
				</div>
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-paperclip"></use>
            </svg>
					<h6>Tempor commodo</h6>
					<p class="text-muted">Tempor commodo nostrud ex Lorem occaecat
						duis occaecat minim.</p>
				</div>
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-screen"></use>
            </svg>
					<h6>Et fugiat sint occaecat</h6>
					<p class="text-muted">Et fugiat sint occaecat voluptate
						incididunt anim nostrud ea cillum cillum consequat.</p>
				</div>
				<div class="col-sm-6 col-lg-4 mb-3">
					<svg class="lnr text-primary services-icon">
              <use xlink:href="#lnr-inbox"></use>
            </svg>
					<h6>Et labore tempor et</h6>
					<p class="text-muted">Et labore tempor et adipisicing dolor.</p>
				</div>
			</div>
		</div>
	</section>

	<header class="bg-primary text-center py-5 mb-4">
		<div class="container">
			<h1 class="font-weight-light text-white">Conoce nuestro equipo</h1>
		</div>
	</header>


	<div class="row">
		<!-- Team Member 1 -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-0 shadow">
				<img src="https://source.unsplash.com/TMgQMXoglsM/500x350"
					class="card-img-top" alt="...">
				<div class="card-body text-center">
					<h5 class="card-title mb-0">Depto de marqueting</h5>
					<div class="card-text text-black-50">Web Developer</div>
				</div>
			</div>
		</div>
		<!-- Team Member 2 -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-0 shadow">
				<img src="https://source.unsplash.com/9UVmlIb0wJU/500x350"
					class="card-img-top" alt="...">
				<div class="card-body text-center">
					<h5 class="card-title mb-0">Team Member</h5>
					<div class="card-text text-black-50">Web Developer</div>
				</div>
			</div>
		</div>
		<!-- Team Member 3 -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-0 shadow">
				<img src="https://source.unsplash.com/sNut2MqSmds/500x350"
					class="card-img-top" alt="...">
				<div class="card-body text-center">
					<h5 class="card-title mb-0">Team Member</h5>
					<div class="card-text text-black-50">Web Developer</div>
				</div>
			</div>
		</div>
		<!-- Team Member 4 -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-0 shadow">
				<img src="https://source.unsplash.com/ZI6p3i9SbVU/500x350"
					class="card-img-top" alt="...">
				<div class="card-body text-center">
					<h5 class="card-title mb-0">Team Member</h5>
					<div class="card-text text-black-50">Web Developer</div>
				</div>
			</div>
		</div>
	</div>
</div>