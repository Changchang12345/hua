<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        main {
            display: flex;
        }
        main article {
            margin: 0 15px;
        }
        article table {
            width: 100%;
            table-layout: fixed;
            border-collapse: collapse;
        }
        article table thead {
            background-color: darkred;
            color: white;
        }
        article table th, table td {
            padding: 8px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        article table td a {
            display: inline-block;
            background-color: #f44336;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn {
            font-size: 1.3em;
           text-align: center;
            padding: 5px 10px;
            color: white;
            display: inline-block;
            text-decoration: none;
            margin-left: 600px;
        }
        div{
            background-color: black;
        }
        div:hover{
            background-color: #f44336;
        }
    </style>
</head>
<body>
<main>
    <article>
        <table>
            <thead>
            <tr>
                <td>序号</td>
                <td>名字</td>
            </tr>
            </thead>
            <tbody>
            <form>
            <c:forEach items="${news }" var="u" varStatus="v">
                <tr>
                    <td>${v.count }</td>
                    <td>${u.name }</td>
                </tr>
            </c:forEach>
            </tbody>
            </form>
        </table>
        <div><a class="btn" href="/listNews">修改</a></div>
    </article>
</main>
</body>
</html>