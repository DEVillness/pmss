<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<header>
    <nav>
        <div class="home">
            <a href="${pageContext.request.contextPath}/"><img alt="Home" src="${pageContext.request.contextPath}/resources/images/PMSS.png"></a>
        </div>
        <div class="links">
            <span><input id="isDark" hidden type="checkbox"><label for="isDark"><nobr>다크 모드</nobr></label></span>
            <a href="${pageContext.request.contextPath}/recruit"><nobr>공개모집</nobr></a>
            <a href="${pageContext.request.contextPath}/material"><nobr>재료가공</nobr></a>
            <a href="${pageContext.request.contextPath}/random"><nobr>랜덤편성</nobr></a>
        </div>
    </nav>
</header>