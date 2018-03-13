<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	인기 키워드:
	<c:forEach var="popularQuery" items="${popularQueryList}">
					${popularQuery} 
				</c:forEach>
	<form action="game.do">
		<select name="type">
			<c:forEach var="searchType" items="${searchTypeList}">
				<option value="${searchType.code}">${searchType.text}</option>
			</c:forEach>
		</select>
		 <input type="text" name="query" value="" />
		 <input type="submit" value="검색" />
	</form>
</body>
</html>