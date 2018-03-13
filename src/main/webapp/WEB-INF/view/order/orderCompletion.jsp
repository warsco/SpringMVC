<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문 완료</title>
</head>
<body>
	주문완료
	<br> 주문 아이템
	<ul>
		<c:forEach var="item" items="${orderCommand.orderItems}">
			<li>${item.itemId } / ${item.number } / ${item.remark }</li>
		</c:forEach>
	</ul>
	배송지 : ${orderCommand.address}
</body>
</html>