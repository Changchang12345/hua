<%--
  Created by IntelliJ IDEA.
  User: 16123
  Date: 2019/12/14
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*"%>
<%@ page import="entity.News" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="utils.DataBaseUtils" %>
<%@ page import="java.io.IOException" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
   .bt a{
        text-decoration: none;
        padding: 5px 10px;
        text-align: center;
        display: inline-block;
        margin-left: 430px;
       color: black;

    }
    .bt a:hover{
        color:palevioletred;
    }
</style>
<body>

<div class="bt">
<%
    String sql = "SELECT * FROM data.news";
    try(Connection conn = DataBaseUtils.getConnection();
        PreparedStatement st = conn.prepareStatement(sql);
        ResultSet rs = st.executeQuery()) {
        while (rs.next()) {
            out.print("<a href=\"/getNews?idnews=");
            out.print(rs.getInt("idnews"));
            out.print("\">");
            out.print(rs.getInt("idnews")+"&nbsp&nbsp&nbsp"+rs.getString("name")+"&nbsp&nbsp&nbsp"+rs.getTimestamp("inserttime"));
            out.print("</a>");
            out.print("<br/>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

%>
</div>
</body>
</html>
