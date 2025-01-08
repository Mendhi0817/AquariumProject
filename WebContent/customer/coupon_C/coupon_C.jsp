<%-- メニューJSP --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="ja">
<title>水族舘プロジェクト</title>
<head>

</head>

<body>

<footer class="py-2 my-4 bg-dark bg-opacity-10 border-top border-3 align-bottom">
<c:import url="/common/base_customer.jsp">

</c:import>

    <script>
        function markAsUsed(couponId) {
            // クーポンが使用された時の処理
            var couponItem = document.getElementById(couponId);
            var button = couponItem.querySelector("button");

            // ボタンを無効化
            button.disabled = true;
            button.style.backgroundColor = "#ccc";  // 無効化後の色

            // クーポンアイテムを「使用済み」状態に
            couponItem.classList.add('used');

            // アラートを表示
            alert(couponId + "が使用されました");
        }

        function goBack() {
            window.history.back();  // 戻る操作
        }
    </script>
</head>

<body>
<h1>クーポン一覧</h1>
	<table border=1>
		<tr>
			<th>クーポン</th>

		</tr>

	<c:forEach var="coupon" items="${listTitle}">
            <tr>

                <td>${coupon.COUPON_TITLE}</td>
                <td>
                <form action ="../manager/CouponCustomerDetail.action" method = "post">
                <input type = "hidden" name = "COUPON_TITLE" value = "${coupon.COUPON_TITLE }">
                <input type = "submit" value = "詳細">
                </form>
               </td>
            </tr>
        </c:forEach>
    </table>




</body>
</html>