<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<header>
    <nav>
        <div>
            <img alt="Home" src="resources/images/PRTS.png" onclick="window.location.href = '${pageContext.request.contextPath}/';">
            <span>PRTS Management Support System</span>
        </div>
        <div class="links">
            <div onclick="window.location.href = '${pageContext.request.contextPath}/recruit';">공개모집</div>
            <div onclick="window.location.href = '${pageContext.request.contextPath}/material';">재료가공</div>
        </div>
    </nav>
</header>