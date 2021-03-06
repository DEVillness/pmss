<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/stylesheets/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/stylesheets/index.css">
    <script defer src="${pageContext.request.contextPath}/resources/scripts/common.js"></script>
    <title>PRTS Management Support System</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<main>
    <section class="recruit" onclick="window.location.href='${pageContext.request.contextPath}/recruit'">
        <div><nobr>공개모집</nobr></div>
    </section>
    <section class="material" onclick="window.location.href='${pageContext.request.contextPath}/material'">
        <div><nobr>재료가공</nobr></div>
    </section>
    <img alt="PMSS" class="logo" src="${pageContext.request.contextPath}/resources/images/PMSS.png">
</main>
</body>
</html>