<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<header>
    <nav>
        <div>
            <img alt="Home" src="resources/images/PRTS.png" onclick="window.location.href = '${pageContext.request.contextPath}/';">
        </div>
        <div class="links">
            <div onclick="window.location.href = '${pageContext.request.contextPath}/recruit';"><nobr>공개모집</nobr></div>
            <div onclick="window.location.href = '${pageContext.request.contextPath}/material';"><nobr>재료가공</nobr></div>
            <div onclick="window.location.href = '${pageContext.request.contextPath}/random';"><nobr>랜덤편성</nobr></div>
        </div>
    </nav>
</header>