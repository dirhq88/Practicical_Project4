<%--
  Created by IntelliJ IDEA.
  User: dirhq
  Date: 2023-11-16
  Time: 오후 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="crud.dao.BoardDAO, crud.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Form</title>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id=request.getParameter("id");
    BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form>
    <table>
        <tr><td>Category:</td><td><%= u.getCategory()%></td></tr>
        <tr><td>Title:</td><td><%= u.getTitle()%></tr>
        <tr><td>Writer:</td><td><%= u.getWriter()%></td></tr>
        <tr><td>Content:</td><td><%= u.getContent()%></td></tr>
        <tr><td><input type="button" value="Return" onclick="history.back()"/></td></tr>
    </table>
</form>

</body>
</html>