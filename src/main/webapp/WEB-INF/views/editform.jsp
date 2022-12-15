<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 은지
  Date: 2022-12-09
  Time: 오후 5:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h1>수정하기</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>사용자 이름</td><td><form:input path="name"/></td></tr>
        <tr><td>날짜</td><td><form:input path="date"/></td></tr>
        <tr><td>일정 시간</td><td><form:input path="place"/></td></tr>
        <tr><td>장소</td><td><form:input path="time"/></td></tr>
        <tr><td>구분(과제, 약속 등등)</td><td><form:input path="category"/></td></tr>
        <tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
        <tr><td>작성자</td><td><form:input path="writer"/></td></tr>
        <tr><td>중요도</td><td><form:input path="point"/></td></tr>
    </table>
    <input type="submit" value="수정하기"/>
    <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>
</body>
</html>
