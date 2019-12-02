<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<META HTTP-EQUIV="Refresh" CONTENT="60">

<title>stepzart | Products</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- bootstrap-CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-select.css">
<!-- bootstrap-select-CSS -->
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- style.css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/jquery-ui1.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css" />
<!-- fontawesome-CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/menu_sideslide.css"
	type="text/css" media="all">
<!-- Navigation-CSS -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="stepzart Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
	
	
 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- //meta tags -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-select.js"></script>
<script>
	$(document).ready(function() {
		var mySelect = $('#first-disabled2');

		$('#special').on('click', function() {
			mySelect.find('option:selected').prop('disabled', true);
			mySelect.selectpicker('refresh');
		});

		$('#special2').on('click', function() {
			mySelect.find('option:disabled').prop('disabled', false);
			mySelect.selectpicker('refresh');
		});

		$('#basic2').selectpicker({
			liveSearch : true,
			maxOptions : 1
		});
	});
</script>
<!-- language-select -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.leanModal.min.js"></script>
<link href="${pageContext.request.contextPath}/css/jquery.uls.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/jquery.uls.grid.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/jquery.uls.lcd.css"
	rel="stylesheet" />
<!-- Source -->
<script src="${pageContext.request.contextPath}/js/jquery.uls.data.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.uls.data.utils.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uls.lcd.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.uls.languagefilter.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.uls.regionfilter.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.uls.core.js"></script>
<script>
	$(document).ready(function() {
		$('.uls-trigger').uls({
			onSelect : function(language) {
				var languageName = $.uls.data.getAutonym(language);
				$('.uls-trigger').text(languageName);
			},
			quickList : [ 'en', 'hi', 'he', 'ml', 'ta', 'fr' ]
		//FIXME
		});
	});
</script>
<!-- //language-select -->
<!-- switcher-grid and list alignment -->
<script src="${pageContext.request.contextPath}/js/tabs.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				var elem = $('#container ul');
				$('#viewcontrols a').on(
						'click',
						function(e) {
							if ($(this).hasClass('gridview')) {
								elem.fadeOut(1000, function() {
									$('#container ul').removeClass('list')
											.addClass('grid');
									$('#viewcontrols').removeClass(
											'view-controls-list').addClass(
											'view-controls-grid');
									$('#viewcontrols .gridview').addClass(
											'active');
									$('#viewcontrols .listview').removeClass(
											'active');
									elem.fadeIn(1000);
								});
							} else if ($(this).hasClass('listview')) {
								elem.fadeOut(1000, function() {
									$('#container ul').removeClass('grid')
											.addClass('list');
									$('#viewcontrols').removeClass(
											'view-controls-grid').addClass(
											'view-controls-list');
									$('#viewcontrols .gridview').removeClass(
											'active');
									$('#viewcontrols .listview').addClass(
											'active');
									elem.fadeIn(1000);
								});
							}
						});
			});
</script>
<!-- //switcher-grid and list alignment -->

<script type="text/javascript">
	function onPageLoad() {

		var expiryDateVal = document.getElementById("expiryDate").innerHTML;

		var expiryDate = new Date(expiryDateVal);
		var nowDate = new Date();

		var miliSec = expiryDate.getTime() - nowDate.getTime();

		var seconds = miliSec / 1000;
		seconds = seconds.toFixed(2);

		var minutes = seconds / 60;
		minutes = minutes.toFixed(2);

		var hours = minutes / 60;
		hours = hours.toFixed(2);

		var days = hours / 24;
		days = days.toFixed(2);

		/* var seconds = miliSec % 1000;
		seconds=seconds.toFixed(2);
		
		var minutes = seconds % 60;
		minutes=minutes.toFixed(2);
		
		var hours = minutes % 60;
		hours=hours.toFixed(2);
		
		var days = hours % 24;
		days=days.toFixed(2); */

		if (seconds <= 0) {

			return;
		}

		var msg = 'DO hurry, Offer will expire in ';

		if (days > 0) {

			msg = msg + '' + days + ' days ';
		}

		if (hours > 0) {

			msg = msg + '' + hours + ' hours ';
		}
		if (minutes > 0) {

			msg = msg + '' + minutes + ' minutes ';
		}
		if (seconds > 0) {

			msg = msg + '' + seconds + ' seconds ';
		}

		document.getElementById("remainingTime").innerHTML = msg;

	}
</script>
</head>
<body onload="onPageLoad()">

	<!-- header Start-->
	<jsp:include page="headerWithoutSlider.jsp" />
	<!-- header End-->
	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"> <a href="index.html"><i
					class="fa fa-home home_1"></i></a> / <a href="categories.html">Categories</a>
				/ <span>${param.category}</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Mobiles -->
	<div class="total-ads main-grid-border">
		<div class="container">
			<div class="select-box">
				<div class="select-city-for-local-ads ads-list">
					<label>Select your city to see local ads</label> <select
						name="city">

						<c:forEach var="city" items="${applicationScope.cities }">
							<c:choose>
								<c:when test="${city  eq param.city }">
									<option value="${city }" selected="selected">${city }</option>
								</c:when>
								<c:otherwise>
									<option value="${city }">${city }</option>
								</c:otherwise>
							</c:choose>

						</c:forEach>

					</select>
				</div>
				<div class="browse-category ads-list">
					<label>Browse Categories</label> <select name="category">

						<c:forEach var="category" items="${applicationScope.categories }">
							<c:choose>
								<c:when test="${category  eq param.category }">
									<option value="${category }" selected="selected">${category }</option>
								</c:when>
								<c:otherwise>
									<option value="${category }">${category }</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>

					</select>

				</div>
				<div class="search-product ads-list">
					<label>Search for a specific product</label>
					<div class="search">
						<div id="custom-search-input">
							<div class="input-group">
								<input type="text" class="form-control input-lg"
									placeholder="Enter search key" /> <span
									class="input-group-btn">
									<button class="btn btn-info btn-lg" type="button">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="ads-grid">

				<div class="agileinfo-ads-display col-md-9">
					<div class="wrapper">
						<div class="bs-example bs-example-tabs" role="tabpanel"
							data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs nav-tabs-responsive"
								role="tablist">
								<li role="presentation" class="active"><a href="#home"
									id="home-tab" role="tab" data-toggle="tab" aria-controls="home"
									aria-expanded="true"> <span class="text">All Ads</span>
								</a></li>

							</ul>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home"
									aria-labelledby="home-tab">
									<div>
										<div id="container">
											<div class="view-controls-list" id="viewcontrols">
												<label>view :</label> <a class="gridview"><i
													class="glyphicon glyphicon-th"></i></a> <a
													class="listview active"><i
													class="glyphicon glyphicon-th-list"></i></a>
											</div>
											<div class="sort">
												<div class="sort-by">
													<label>Sort By : </label> <select>
														<option value="">Most recent</option>
														<option value="">Price: Rs Low to High</option>
														<option value="">Price: Rs High to Low</option>
													</select>
												</div>
											</div>
											<div class="clearfix"></div>
											<ul class="list">

												<c:forEach var="product" items="${products }">

													<a href="single.html">
														<li><img
															src="${pageContext.request.contextPath}/uploads/${product.image1}"
															title="" alt="" />
															<section class="list-left">
																<h5 class="title">${product.title}</h5>
																<span class="adprice">Rs ${product.price}</span>
																<p class="catpath">${product.description}</p>
															</section>
															<section class="list-right">
															<span class="cityname">${product.offer.description}</span>
																<span class="date" id="expiryDate">${product.offer.expiryDate}</span>
																<span class="cityname">${product.user.city}</span>
															</section>
															<section class="list-right list-bottom">

																<h4 id="remainingTime"></h4>

															</section>
															<div class="clearfix"></div></li>
													</a>


												</c:forEach>



											</ul>
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="profile"
									aria-labelledby="profile-tab">
									<div>
										<div id="container">
											<div class="view-controls-list" id="viewcontrols">
												<label>view :</label> <a class="gridview"><i
													class="glyphicon glyphicon-th"></i></a> <a
													class="listview active"><i
													class="glyphicon glyphicon-th-list"></i></a>
											</div>
											<div class="sort">
												<div class="sort-by">
													<label>Sort By : </label> <select>
														<option value="">Most recent</option>
														<option value="">Price: Rs Low to High</option>
														<option value="">Price: Rs High to Low</option>
													</select>
												</div>
											</div>
											<div class="clearfix"></div>
											<ul class="list">
												<c:forEach var="product" items="${products }">

													<a href="single.html">
														<li><img
															src="${pageContext.request.contextPath}/uploads/${product.image1}"
															title="" alt="" />
															<section class="list-left">
																<h5 class="title">${product.title}</h5>
																<span class="adprice">Rs ${product.price}</span>
																<p class="catpath">${product.description}</p>
															</section>
															<section class="list-right">
																<span class="date">${product.offer.expiryDate}</span> <span
																	class="cityname">${product.user.city}</span>
															</section>
															<div class="clearfix"></div></li>
													</a>


												</c:forEach>

											</ul>
										</div>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="samsa"
									aria-labelledby="samsa-tab">
									<div>
										<div id="container">
											<div class="view-controls-list" id="viewcontrols">
												<label>view :</label> <a class="gridview"><i
													class="glyphicon glyphicon-th"></i></a> <a
													class="listview active"><i
													class="glyphicon glyphicon-th-list"></i></a>
											</div>
											<div class="sort">
												<div class="sort-by">
													<label>Sort By : </label> <select>
														<option value="">Most recent</option>
														<option value="">Price: Rs Low to High</option>
														<option value="">Price: Rs High to Low</option>
													</select>
												</div>
											</div>
											<div class="clearfix"></div>
											<ul class="list">
												<c:forEach var="product" items="${products }">

													<a href="single.html">
														<li><img
															src="${pageContext.request.contextPath}/uploads/${product.image1}"
															title="" alt="" />
															<section class="list-left">
																<h5 class="title">${product.title}</h5>
																<span class="adprice">Rs ${product.price}</span>
																<p class="catpath">${product.description}</p>

															</section>
															<section class="list-right">
																<h5 class="title">${product.offer.description}</h5>
																<span class="date">${product.offer.expiryDate}</span> <span
																	class="cityname">${product.user.city}</span>
															</section>
															<div class="clearfix"></div></li>
													</a>


												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<ul class="pagination pagination-sm">
									<li><a href="#">Prev</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">6</a></li>
									<li><a href="#">7</a></li>
									<li><a href="#">8</a></li>
									<li><a href="#">Next</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- // Mobiles -->
	<!--footer section start-->
	<jsp:include page="footer.jsp" />
	<!--footer section end-->
</body>
<!-- Navigation-JavaScript -->
<script src="${pageContext.request.contextPath}/js/classie.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<!-- //Navigation-JavaScript -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
	$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		 */

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<!-- start-smoth-scrolling -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/move-top.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- //here ends scrolling icon -->
</html>