<%--
  Created by IntelliJ IDEA.
  User: hyunjunglim
  Date: 2024. 10. 29.
  Time: 오후 5:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>회원 > 로그인</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <style>

    </style>
</head>

<body>
<c:import url="/WEB-INF/fragment/navbar.jsp"/>

<div class="container">
    <form method="get">
        <fieldset>
            <legend>로그인</legend>

            <ul>
                <li>
                    <label for="input-id">아이디 *</label>
                    <input type="text" id="input-id" name="id" placeholder="20자 이내로 작성해주세요." required>
                </li>

                <li>
                    <label for="input-password">비밀번호 *</label>
                    <input type="text" id="input-password" name="password" placeholder="20자 이내로 작성해주세요." required>
                </li>

                <li>
                    <button>로그인</button>
                </li>
            </ul>
        </fieldset>
    </form>

    <c:if test="${not empty message}">
        <div>
                ${message}
        </div>
    </c:if>
</div>
</body>
</html>
