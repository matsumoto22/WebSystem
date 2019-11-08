<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.DQ1_MONSTER" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%
// リクエストスコープに保存されたflowerListを取得
 List<DQ1_MONSTER> monsList = (List<DQ1_MONSTER>) request.getAttribute("monsList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DQ1</title>
</head>
<body>
<h1>DQ1のモンスター</h1>
<p>
モンスターリスト：<br>
 <table border="1">
    <tr>
      <th>ID</th>
      <th>名前</th>
      <th>HP</th>
      <th>ATK</th>
      <th>DEF</th>
      <th>GOLD</th>
      <th>EXP</th>
      <th>IMG</th>
    </tr>

<c:forEach var="monsList" items="${monsList}">
　<tr>
	<td><c:out value="${monsList.id}" /></td>
	<td><c:out value="${monsList.name}" /></td>
	<td><c:out value="${monsList.hp}" /></td>
	<td><c:out value="${monsList.atk}" /></td>
	<td><c:out value="${monsList.def}" /></td>
	<td><c:out value="${monsList.gold}" /></td>
	<td><c:out value="${monsList.exp}" /></td> 
	<td><img src="<c:out value="${monsList.id}" />.png"/></td>
   </tr>
</c:forEach>
  </table>
</p>

</body>
</html>