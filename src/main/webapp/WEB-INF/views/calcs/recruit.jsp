<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/stylesheets/recruit.css">
    <title>계산기</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<main>
    <table class="tags">
        <thead>
        <tr>
            <th>포지션</th>
            <th>배치</th>
            <th>등급</th>
            <th>속성</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                <span><input id="vanguard" hidden type="checkbox"><label for="vanguard">뱅가드</label></span>
                <span><input id="guard" hidden type="checkbox"><label for="guard">가드</label></span>
                <span><input id="defender" hidden type="checkbox"><label for="defender">디펜더</label></span>
                <span><input id="sniper" hidden type="checkbox"><label for="sniper">스나이퍼</label></span>
                <span><input id="caster" hidden type="checkbox"><label for="caster">캐스터</label></span>
                <span><input id="medic" hidden type="checkbox"><label for="medic">메딕</label></span>
                <span><input id="supporter" hidden type="checkbox"><label for="supporter">서포터</label></span>
                <span><input id="specialist" hidden type="checkbox"><label for="specialist">스페셜리스트</label></span>
            </td>
            <td>
                <span><input id="melee" hidden type="checkbox"><label for="melee">근거리</label></span>
                <span><input id="ranged" hidden type="checkbox"><label for="ranged">원거리</label></span>
            </td>
            <td>
                <span><input id="starter" hidden type="checkbox"><label for="starter">신입</label></span>
                <span><input id="senior" hidden type="checkbox"><label for="senior">특별채용</label></span>
                <span><input id="top" hidden type="checkbox"><label for="top">고급특별채용</label></span>
            </td>
            <td>
                <span><input id="healing" hidden type="checkbox"><label for="healing">힐링</label></span>
                <span><input id="dps" hidden type="checkbox"><label for="dps">딜러</label></span>
                <span><input id="support" hidden type="checkbox"><label for="support">지원</label></span>
                <span><input id="area" hidden type="checkbox"><label for="area">범위공격</label></span>
                <span><input id="slow" hidden type="checkbox"><label for="slow">감속</label></span>
                <span><input id="survival" hidden type="checkbox"><label for="survival">생존형</label></span>
                <span><input id="defense" hidden type="checkbox"><label for="defense">방어형</label></span>
                <span><input id="debuff" hidden type="checkbox"><label for="debuff">디버프</label></span>
                <span><input id="shift" hidden type="checkbox"><label for="shift">강제이동</label></span>
                <span><input id="cc" hidden type="checkbox"><label for="cc">제어형</label></span>
                <span><input id="nuker" hidden type="checkbox"><label for="nuker">누커</label></span>
                <span><input id="summon" hidden type="checkbox"><label for="summon">소환</label></span>
                <span><input id="redeploy" hidden type="checkbox"><label for="redeploy">쾌속부활</label></span>
                <span><input id="cost" hidden type="checkbox"><label for="cost">코스트+</label></span>
                <span><input id="robot" hidden type="checkbox"><label for="robot">로봇</label></span>
            </td>
        </tr>
        </tbody>
    </table>
</main>
</body>
</html>