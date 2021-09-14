<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/stylesheets/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/stylesheets/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/stylesheets/recruit.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap">
    <script defer src="${pageContext.request.contextPath}resources/scripts/recruit.js"></script>
    <title>공개모집 계산기</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<main>
    <table class="tags">
        <tbody>
        <tr>
            <th><nobr>포지션</nobr></th>
            <td>
                <span><input id="vanguard" class="position" hidden type="checkbox" onchange="checkPosition()"><label for="vanguard"><nobr>뱅가드</nobr></label></span>
                <span><input id="guard" class="position" hidden type="checkbox" onchange="checkPosition()"><label for="guard"><nobr>가드</nobr></label></span>
                <span><input id="defender" class="position" hidden type="checkbox" onchange="checkPosition()"><label for="defender"><nobr>디펜더</nobr></label></span>
                <span><input id="sniper" class="position" hidden type="checkbox" onchange="checkPosition()"><label for="sniper"><nobr>스나이퍼</nobr></label></span>
                <span><input id="caster" class="position" hidden type="checkbox" onchange="checkPosition()"><label for="caster"><nobr>캐스터</nobr></label></span>
                <span><input id="medic" class="position" hidden type="checkbox" onchange="checkPosition()"><label for="medic"><nobr>메딕</nobr></label></span>
                <span><input id="supporter" class="position" hidden type="checkbox" onchange="checkPosition()"><label for="supporter"><nobr>서포터</nobr></label></span>
                <span><input id="specialist" class="position" hidden type="checkbox" onchange="checkPosition()"><label for="specialist"><nobr>스페셜리스트</nobr></label></span>
                <span><input id="position" name="position" type="hidden" value=""></span>
            </td>
        </tr>
        <tr>
            <th><nobr>배치</nobr></th>
            <td>
                <span><input id="melee" class="place" hidden type="checkbox" onchange="checkPlace()"><label for="melee"><nobr>근거리</nobr></label></span>
                <span><input id="ranged" class="place" hidden type="checkbox" onchange="checkPlace()"><label for="ranged"><nobr>원거리</nobr></label></span>
                <span><input id="place" name="place" type="hidden" value=""></span>
            </td>
        </tr>
        <tr>
            <th><nobr>등급</nobr></th>
            <td>
                <span><input id="starter" class="rank" hidden type="checkbox" onchange="checkRank()"><label for="starter"><nobr>신입</nobr></label></span>
                <span><input id="senior" class="rank" hidden type="checkbox" onchange="checkRank()"><label for="senior"><nobr>특별채용</nobr></label></span>
                <span><input id="top" class="rank" hidden type="checkbox" onchange="checkRank()"><label for="top"><nobr>고급특별채용</nobr></label></span>
                <span><input id="rank" name="rank" type="hidden" value=""></span>
            </td>
        </tr>
        <tr>
            <th><nobr>속성</nobr></th>
            <td>
                <span><input id="healing" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="healing"><nobr>힐링</nobr></label></span>
                <span><input id="dps" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="dps"><nobr>딜러</nobr></label></span>
                <span><input id="support" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="support"><nobr>지원</nobr></label></span>
                <span><input id="area" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="area"><nobr>범위공격</nobr></label></span>
                <span><input id="slow" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="slow"><nobr>감속</nobr></label></span>
                <span><input id="survival" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="survival"><nobr>생존형</nobr></label></span>
                <span><input id="defense" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="defense"><nobr>방어형</nobr></label></span>
                <span><input id="debuff" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="debuff"><nobr>디버프</nobr></label></span>
                <span><input id="shift" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="shift"><nobr>강제이동</nobr></label></span>
                <span><input id="cc" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="cc"><nobr>제어형</nobr></label></span>
                <span><input id="nuker" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="nuker"><nobr>누커</nobr></label></span>
                <span><input id="summon" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="summon"><nobr>소환</nobr></label></span>
                <span><input id="redeploy" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="redeploy"><nobr>쾌속부활</nobr></label></span>
                <span><input id="cost" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="cost"><nobr>코스트+</nobr></label></span>
                <span><input id="robot" class="tag" hidden type="checkbox" onchange="checkTag()"><label for="robot"><nobr>로봇</nobr></label></span>
                <span><input id="tag" name="tag" type="hidden" value=""></span>
            </td>
        </tr>
        <tr class="buttons">
            <td colspan="2"><div class="reset" onclick="resetChecked()">초기화</div></td>
        </tr>
        <tr class="buttons">
            <td colspan="2"><div class="search" onclick="window.location.href='/recruit_calculate';">태그 검색</div></td>
        </tr>
        </tbody>
    </table>
    <table class="result">

    </table>
</main>
</body>
</html>