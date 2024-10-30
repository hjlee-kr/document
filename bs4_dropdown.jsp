<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.submenu {
	position: relative;
}

.submenu .dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -6px; /* Adjust to align properly */
	display: none; /* 기본적으로 숨김 */
}
</style>
<script type="text/javascript">
$(function(){

	$("div.dropdown").on("show.bs.dropdown", function(){
		console.log("열렸다");
	});

	$("div.dropdown").on("hide.bs.dropdown", function(){
		console.log("닫혔다");
	});
	
	$('.submenu a').on("click", function(e) {
		$(".child1").hide();
		$(".child2").hide();
		$(".child3").hide();
        	$(this).next('div').toggle();
        	e.stopPropagation();
        	e.preventDefault();
	});
});
</script>
</head>
<body>

<div class="container">

	<div class="dropdown">
	  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
	   id="parentDropdown" aria-haspopup="true" aria-expanded="false">
	    Dropdown button
	  </button>
		<div class="dropdown-menu" aria-labelledby="parentDropdown">
			<div class="dropdown dropright submenu">
			  <a class="dropdown-item drapdown-toggle" href="#" id="childDropdown1" role="button"
			   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    자식드롭다운1</a>
				    <div class="dropdown-menu child1" aria-labelledby="childDropdown1">
				      <a class="dropdown-item" href="#">Link 1</a>
				      <a class="dropdown-item" href="#">Link 2</a>
				      <a class="dropdown-item" href="#">Link 3</a>
				    </div>
			</div>
			<div class="dropdown dropright submenu">
			  <a class="dropdown-item drapdown-toggle" href="#" id="childDropdown2" role="button"
			   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    자식드롭다운2</a>
				    <div class="dropdown-menu child2" aria-labelledby="childDropdown2">
				      <a class="dropdown-item" href="#">Link 1</a>
				      <a class="dropdown-item" href="#">Link 2</a>
				      <a class="dropdown-item" href="#">Link 3</a>
				    </div>
			</div>
			<div class="dropdown dropright submenu">
			  <a class="dropdown-item drapdown-toggle" href="#" id="childDropdown3" role="button"
			   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    자식드롭다운3</a>
				    <div class="dropdown-menu child3" aria-labelledby="childDropdown3">
				      <a class="dropdown-item" href="#">Link 1</a>
				      <a class="dropdown-item" href="#">Link 2</a>
				      <a class="dropdown-item" href="#">Link 3</a>
				    </div>
			</div>

		</div>
	</div>

	
</div>
</body>
</html>
