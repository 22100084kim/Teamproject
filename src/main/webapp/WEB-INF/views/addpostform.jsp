<%--
  Created by IntelliJ IDEA.
  User: 은지
  Date: 2022-12-09
  Time: 오후 5:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert</title>
</head>
<body>
<h1>새 일정 추가하기</h1>
<form action="addok" method="post">
    <table id="edit">
        <tr><td>사용자 이름</td><td><input type="text" name="name"/></td></tr>
        <tr><td>날짜</td><td><input type="text" name="date"/></td></tr>
        <tr><td>장소</td><td><input type="text" name="place"/></td></tr>
        <tr><td>시간</td><td><input type="text" name="time"/></td></tr>
        <tr><td>구분(과제, 약속 등등)</td><td><input type="text" name="category"/></td></tr>
        <tr><td>내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        <tr><td>작성자</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>중요도(상,중,하)</td><td><input type="text" name="point"/></td></tr>

    </table>
    <button type="button" onclick="history.back()" >목록보기</button>
    <button type="submit">등록하기</button>
</form>
</body>
</html>
