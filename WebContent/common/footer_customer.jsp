<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
  footer button {
  			position:relative;
            margin: 0 auto;
            padding: 10px 70px;
			font-size:30px;
        }
  .footer{
  position: fixed;
  bottom: 0;
  left:0;
  right:0;
  text-align: center;
  padding: 5px 0;
  background-color: #f0f0f0;}
</style>
<div class ="footer">
<footer>
        <form action = "home_staff.jsp" method = "post"><input type = "submit" value = "ホーム"></form>
        <form action = "../staff/Setting/setting_staff.jsp" method = "post"><input type = "submit" value = "マップ"></form>
        <form action = "../staff/Setting/setting_staff.jsp" method = "post"><input type = "submit" value = "お知らせ"></form>
        <form action = "../staff/Setting/setting_staff.jsp" method = "post"><input type = "submit" value = "設定"></form>


</footer>
</div>