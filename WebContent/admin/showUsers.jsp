<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- bootstrap-CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-select.css">
<!-- bootstrap-select-CSS -->
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- style.css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css" type="text/css"
	media="screen" />
<!-- flexslider-CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" />
<!-- fontawesome-CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/menu_sideslide.css" type="text/css"
	media="all">
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

<style type="text/css">
th {
	background-color: black;
	color: white;
	text-align: center;
}
</style>
</head>
<body onload="onIndexLoad()">

	<jsp:include page="header.jsp" />

	<!-- content-starts-here -->
	<div class="main-content">

		<hr />
		<h2 align="center">List of Users</h2>

		<div class="container" style="height: 300">
			<hr />
			<table class="table table-bordered">

				<tr>
					<th>S.No</th>
					<th>Name</th>
					<th>Email</th>
					<th>Contact</th>
					<th>Address</th>
					<th>City</th>
					<th>State</th>
					<th>PinCode</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>Show Ads</th>

				</tr>

				<c:forEach var="user" items="${users }" varStatus="i">
					<tr>
						<td>${i.count }</td>
						<td>${user.name }</td>
						<td>${user.email }</td>
						<td>${user.contact }</td>
						<td>${user.addressLine1},${user.addressLine2}</td>
						<td>${user.city }</td>
						<td>${user.state }</td>
						<td>${user.pincode }</td>
						<td><a href="${pageContext.request.contextPath}/admin/editUser.jsp?id=${user.id }"
							class="btn btn-info">Edit</a></td>
						<td><a href="${pageContext.request.contextPath}/admin/showUsers.jsp?id=${user.id }"
							class="btn btn-danger">Delete</a></td>
							<td><a href="${pageContext.request.contextPath}/admin/showAds.jsp?user_id=${user.id }"
							class="btn btn-warning">Ads</a></td>
					</tr>
				</c:forEach>


			</table>
		</div>
	</div>

	<!--footer section start-->

	<jsp:include page="footer.jsp" />


	<!--footer section end-->
	<!-- Navigation-Js-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/classie.js"></script>
	<!-- //Navigation-Js-->
	<!-- js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.leanModal.min.js"></script>
	<link href="${pageContext.request.contextPath}/css/jquery.uls.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/jquery.uls.grid.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/jquery.uls.lcd.css" rel="stylesheet" />
	<!-- Source -->
	<script src="${pageContext.request.contextPath}/js/jquery.uls.data.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.uls.data.utils.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.uls.lcd.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.uls.languagefilter.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.uls.regionfilter.js"></script>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flexisel.js"></script>
	<!-- flexisel-js -->
	<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo3").flexisel({
				visibleItems : 1,
				animationSpeed : 1000,
				autoPlay : true,
				autoPlaySpeed : 5000,
				pauseOnHover : true,
				enableResponsiveBreakpoints : true,
				responsiveBreakpoints : {
					portrait : {
						changePoint : 480,
						visibleItems : 1
					},
					landscape : {
						changePoint : 640,
						visibleItems : 1
					},
					tablet : {
						changePoint : 768,
						visibleItems : 1
					}
				}
			});

		});
	</script>
	<!-- Slider-JavaScript -->
	<script src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
	<script>
		$(function() {
			$("#slider").responsiveSlides({
				auto : true,
				pager : false,
				nav : true,
				speed : 500,
				maxwidth : 800,
				namespace : "large-btns"
			});

		});
	</script>
	<!-- //Slider-JavaScript -->
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
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
</body>
</html>