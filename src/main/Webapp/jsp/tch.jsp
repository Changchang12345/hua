<%--
  Created by IntelliJ IDEA.
  User: 16123
  Date: 2019/12/14
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<style>
    .btn{
        padding: 5px 10px;
        display: inline-block;
        text-decoration: none;
        background-color: #f44336;
        border-radius: 5px;
    }
    .img{
        width: 200px;
        height: 200px;
    }
    .tch{
        padding: 30px;
    }
</style>
<body>
<div id="tch1" class="tch">
    <img class="img" src="../resources/teacher.jpg" alt="花花"><br/>
    职称：副教授<br/>
    <a class="btn" href="/jsp/cha.jsp">查看</a>
</div>
<div id="tch2" class="tch">
    <img class="img" src="../resources/teacher1.jpg" alt="花花"><br/>
    职称：副教授<br/>
    <a class="btn" href="/jsp/cha.jsp">查看</a>
</div>
<div id="tch3" class="tch">
    <img class="img" src="../resources/teacher2.jpg" alt="花花"><br/>
    职称：副教授<br/>
    <a class="btn" href="/jsp/cha.jsp">查看</a>
</div>
</body>
</html>
