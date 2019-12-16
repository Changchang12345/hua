<%--
  Created by IntelliJ IDEA.
  User: 16123
  Date: 2019/12/12
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<style>
    *{
        box-sizing: border-box;
        padding: 0;
        margin: 0;
    }
    ul{
        list-style-type: none;
        background-color: rgba(80,50,129,0.6);
    }
    button{
        background-color: white;
        color: black;
        padding: 3px 10px;
    }
    form{
        padding: 10px 20px;
        background-color: rgba(80,50,129,0.6);
        text-align: center;
    }
    li{
        list-style-type: none;
        padding: 10px;
        text-align: center;
    }
    a{
        text-decoration: none;
        display: inline-block;
        padding: 5px 15px;
        list-style-type: none;
    }
    a:hover{
        color: white;
    }
    h2{
        text-align: center;
        padding: 10px 5px 10px 10px;
    }
</style>
<body>
<form action="/addNews" method="post">
    <select name="idnews">
        <c:forEach items="${news }" var="u">
            <option value="${u.idnews }">${u.name }</option>
        </c:forEach>
    </select>
    新闻名：<input name="name" required>
    <button type="submit">添加</button>
</form>
<br/>
<br/>
<form action="/UpdateNews" method="post">
    <select name="idnews">
        <c:forEach items="${news }" var="u">
            <option value="${u.idnews }">${u.name }</option>
        </c:forEach>
    </select>
    新的新闻名：<input name="name" required>
    <button type="submit">更新</button>
</form>
<br/>
<br/>
<form action="/DeleteNews" method="post">
    <select name="idnews">
        <c:forEach items="${news }" var="u">
            <option value="${u.idnews }">${u.name }</option>
        </c:forEach>
    </select>
    <button type="submit">删除</button>
</form>
<h2>全部新闻</h2><br />
<ul>
    <c:forEach items="${news }" var="u">
        <li><a href="/getNews?idnews=${u.idnews }">${u.name }</a></li>
    </c:forEach>
</ul>
</body>

</html>
