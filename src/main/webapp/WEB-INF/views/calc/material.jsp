<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/stylesheets/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/stylesheets/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/stylesheets/material.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap">
    <script defer src="${pageContext.request.contextPath}/resources/scripts/material.js"></script>
    <title>재료가공 계산기</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<main>
    <section class="control">

    </section>
    <section class="rank" id="rank5">
        <div class="commodity" id="d32">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="bipolar">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="polymerizer">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="crystalline5">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
    </section>
    <section class="rank" id="rank4">
        <div class="commodity" id="device4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="keton4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="parium4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="ester4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="sugar4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="rock4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="kohl4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="grindstone4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="manganese4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="rma70-24">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="alloy4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="gel4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="crystalline4">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
    </section>
    <section class="rank" id="rank3">
        <div class="commodity" id="device3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="keton3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="parium3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="ester3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="sugar3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="rock3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="kohl3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="grindstone3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="manganese3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="rma70-12">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="alloy3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="gel3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="crystalline3">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
    </section>
    <section class="rank" id="rank2">
        <div class="commodity" id="device2">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="keton2">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="parium2">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="ester2">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="sugar2">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="rock2">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
    </section>
    <section class="rank" id="rank1">
        <div class="commodity" id="device1">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="keton1">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="parium1">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="ester1">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="sugar1">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
        <div class="commodity" id="rock1">
            <img alt="D32" src="resources/images/check.png">
            <div>
                <input type="number" min="0" placeholder="필요">
                <input type="number" min="0" placeholder="보유">
                <input disabled="disabled" placeholder="부족">
            </div>
        </div>
    </section>
</main>
</body>
</html>
