<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='deleteok/' + id;
    }</script>
<style>
    #list {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    #list td, #list th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align:center;
    }
    #list tr:nth-child(even){background-color: #f2f2f2;}
    #list tr:hover {background-color: #ffe0e0;}
    #list th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #bb7b7b;
        color: white;
    }
</style>
<head>
</head>
<body>

<h1>일정관리시스템</h1>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Date</th>
        <th>Place</th>
        <th>Time</th>
        <th>Category</th>
        <th>Content</th>
        <th>Writer</th>
        <th>Point</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td> ${u.getSeq()}</td>
            <td> ${u.getName()}</td>
            <td> ${u.getDate()}</td>
            <td> ${u.getPlace()}</td>
            <td> ${u.getTime()}</td>
            <td> ${u.getCategory()}</td>
            <td> ${u.getContent()}</td>
            <td> ${u.getWriter()}</td>
            <td> ${u.getPoint()}</td>
            <td> ${u.getRegdate()}</td>
            <td><a href="editform/${u.getSeq()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>


</html>