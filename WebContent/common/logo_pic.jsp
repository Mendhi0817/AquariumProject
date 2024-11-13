<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	header{
	background-image:url("../picture/logo.jpg");
	background-position: left;
	background-repeat: no-repeat;
	}
	head{
	background-image:url("../picture/logo.jpg");
	background-position: left;
	background-repeat: no-repeat;
	}
	body{
	background-image:url("../picture/logo.jpg");
	background-repeat:no-repeat;
	background-position: center;
	background-repeat: no-repeat;
}
 .picture{
 background-position:left;
 background-repeat: no-repeat;
 }
	.picture img{
		width: 100%;
		margin:10px 0;
	}
</style>
<header>
<div class="picture">
<img src="<%= request.getContextPath() %>/picture/logo.jpg" />
</div>
</header>