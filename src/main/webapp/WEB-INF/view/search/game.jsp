<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>게임 검색 결과</title>
</head>
<body>
	인기 키워드:
	<c:forEach var="popularQuery" items="${popularQueryList}">${popularQuery} </c:forEach>
	<form action="game.do">
		<select name="type">
			<c:forEach var="searchType" items="${searchTypeList}">
				<option value="${searchType.code}"
					<c:if test="${command.type == searchType.code}">selected</c:if>>
					${searchType.text}</option>
			</c:forEach>
		</select> <input type="text" name="query" value="${command.query}" /> <input
			type="submit" value="검색" />
	</form>
	검색 결과: ${searchResult}
</body>
</html>