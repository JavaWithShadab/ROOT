<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>stepzart | Post Ads</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- bootstrap-CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-select.css">
<!-- bootstrap-select-CSS -->
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- style.css -->
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

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- bootstrap-CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-select.css">
<!-- bootstrap-select-CSS -->
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- style.css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/flexslider.css"
	type="text/css" media="screen" />
<!-- flexslider-CSS -->
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

<script type="text/javascript">
	function onIndexLoad() {

		var x = '${requestScope.msg}';

		if (x) {

			alert(x);
		}

	}
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
</head>
<body onload="onIndexLoad()">

	<!-- header Start-->
	<jsp:include page="headerWithoutSlider.jsp" />
	<!-- header End-->

	<!-- breadcrumbs -->
	<div class="w3layouts-breadcrumbs text-center">
		<div class="container">
			<span class="agile-breadcrumbs"><a href="index.html"><i
					class="fa fa-home home_1"></i></a> / <span>Post your Ad</span></span>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- Submit Ad -->
	<div class="submit-ad main-grid-border">
		<div class="container">
			<h2 class="w3-head">Post an Ad</h2>
			<div class="post-ad-form">
				<form action="${pageContext.request.contextPath}/home/product"
					method="post" enctype="multipart/form-data">

					<input type="hidden" name="method" value="Post_Ad"> <label>Select
						Category <span>*</span>
					</label> <select class="" name="category">
						<c:forEach var="category" items="${categories }">
							<option value="${category }">${category }</option>
						</c:forEach>
					</select>
					<div class="clearfix"></div>

					<label>Select Location <span>*</span>
					</label> <select class="" name="location">
						<c:forEach var="category" items="${cities }">
							<option value="${city }">${city }</option>
						</c:forEach>
					</select>
					<div class="clearfix"></div>

					<label>Ad Title <span>*</span></label> <input type="text"
						class="phone" placeholder="" name="title">
					<div class="clearfix"></div>

					<label>Any Offer for Ad </label> <input type="text" class="phone"
						placeholder="post offer" name="offer">
					<div class="clearfix"></div>

					<label>Price </label> <input type="text" class="phone"
						placeholder="price" name="price">
					<div class="clearfix"></div>

					<label>Ad Description <span>*</span></label>
					<textarea class="mess"
						placeholder="Write few lines about your product"
						name="description"></textarea>
					<div class="clearfix"></div>
					<label>Offer Expiry Date </label> <input type="date" class="phone"
						name="expiryDate">
					<div class="clearfix"></div>
					<div class="clearfix"></div>
					<div class="upload-ad-photos">
						<label>Photos for your ad :</label>
						<div class="photos-upload-view">

							<div>
								<input type="file" id="fileselect" name="file1" /><br> <input
									type="file" id="fileselect" name="file2" /><br> <input
									type="file" id="fileselect" name="file3" /><br> <input
									type="file" id="fileselect" name="file4" /><br> <input
									type="file" id="fileselect" name="file5" /><br>

								<div id="filedrag">or drop files here</div>
							</div>

						</div>
					</div>


					<div class="btn btn-primary">
						<input type="submit" value="Upload Files" />
					</div>
				</form>
			</div>
			<div class="clearfix"></div>
			<script src="${pageContext.request.contextPath}/js/filedrag.js"></script>
		</div>
		<!-- 					<div class="personal-details">
						<form>
							<label>Your Name <span>*</span></label> <input type="text"
								class="name" placeholder="">
							<div class="clearfix"></div>
							<label>Your Mobile No <span>*</span></label> <input type="text"
								class="phone" placeholder="">
							<div class="clearfix"></div>
							<label>Your Email Address<span>*</span></label> <input
								type="text" class="email" placeholder="">
							<div class="clearfix"></div>
							<p class="post-terms">
								By clicking <strong>post Button</strong> you accept our <a
									href="terms.html" target="_blank">Terms of Use </a> and <a
									href="privacy.html" target="_blank">Privacy Policy</a>
							</p>
							<input type="submit" value="Post">
							<div class="clearfix"></div>
						</form>
					</div> -->
	</div>


	<!-- // Submit Ad -->

	<!--footer section start-->
	<jsp:include page="footer.jsp"></jsp:include>
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