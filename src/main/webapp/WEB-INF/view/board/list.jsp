<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>게시판</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            text-align: center;
        }

        thead tr {
            height: 50px;
            border-top: 1px solid #000;
            background: var(--table-header-color);
            border-bottom: 1px solid var(--table-border-color);
        }

        tbody tr {
            cursor: pointer;
            height: 40px;
        }

        tbody tr td {
            border-bottom: 1px solid var(--table-border-color);
        }

        tbody tr:last-child {
            border-bottom: none;
        }

        tbody tr:hover {
            background: var(--table-hover-color);
        }

        tbody tr td {
            padding: 5px 10px;
        }
    </style>
</head>

<body>
<c:import url="/WEB-INF/fragment/navbar.jsp"/>

<div class="container">
    <h1>게시판</h1>

    <table>
        <thead>
        <tr>
            <th>#</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${boardList}" var="board">
            <tr onclick="location.href='/board/view?id=${board.id}'">
                <td>${board.id}</td>
                <td>${board.title}</td>
                <td>${board.writer}</td>
                <td>${board.created}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
