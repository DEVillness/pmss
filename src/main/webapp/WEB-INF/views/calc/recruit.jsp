<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="operators" type="net.devillness.pmss.entities.OperatorEntity"--%>
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
    <script defer src="${pageContext.request.contextPath}/resources/scripts/class.ajax.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/scripts/recruitAjax.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/scripts/recruit.js"></script>
    <title>공개모집 계산기</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<main>
    <section>
        <form method="post">
            <table class="tags">
                <tbody>
                <tr class="position">
                    <th>
                        <nobr>포지션</nobr>
                    </th>
                    <td>
                        <span><input id="가드" hidden type="checkbox"><label for="가드"><nobr>가드</nobr></label></span>
                        <span><input id="스나이퍼" hidden type="checkbox"><label for="스나이퍼"><nobr>스나이퍼</nobr></label></span>
                        <span><input id="디펜더" hidden type="checkbox"><label for="디펜더"><nobr>디펜더</nobr></label></span>
                        <span><input id="서포터" hidden type="checkbox"><label for="서포터"><nobr>서포터</nobr></label></span>
                        <span><input id="캐스터" hidden type="checkbox"><label for="캐스터"><nobr>캐스터</nobr></label></span>
                        <span><input id="메딕" hidden type="checkbox"><label for="메딕"><nobr>메딕</nobr></label></span>
                        <span><input id="뱅가드" hidden type="checkbox"><label for="뱅가드"><nobr>뱅가드</nobr></label></span>
                        <span><input id="스페셜리스트" hidden type="checkbox"><label for="스페셜리스트"><nobr>스페셜리스트</nobr></label></span>
                        <span><input id="position" name="position" type="hidden" value=""></span>
                    </td>
                </tr>
                <tr class="place">
                    <th>
                        <nobr>배치</nobr>
                    </th>
                    <td>
                        <span><input id="근거리" hidden type="checkbox"><label for="근거리"><nobr>근거리</nobr></label></span>
                        <span><input id="원거리" hidden type="checkbox"><label for="원거리"><nobr>원거리</nobr></label></span>
                        <span><input id="place" name="place" type="hidden" value=""></span>
                    </td>
                </tr>
                <tr class="rank">
                    <th>
                        <nobr>등급</nobr>
                    </th>
                    <td>
                        <span><input id="신입" hidden type="checkbox"><label for="신입"><nobr>신입</nobr></label></span>
                        <span><input id="특별채용" hidden type="checkbox"><label for="특별채용"><nobr>특별채용</nobr></label></span>
                        <span><input id="고급특별채용" hidden type="checkbox"><label for="고급특별채용"><nobr>고급특별채용</nobr></label></span>
                        <span><input id="rank" name="rank" type="hidden" value=""></span>
                    </td>
                </tr>
                <tr class="tags">
                    <th>
                        <nobr>속성</nobr>
                    </th>
                    <td>
                        <span><input id="제어형" hidden type="checkbox"><label for="제어형"><nobr>제어형</nobr></label></span>
                        <span><input id="누커" hidden type="checkbox"><label for="누커"><nobr>누커</nobr></label></span>
                        <span><input id="힐링" hidden type="checkbox"><label for="힐링"><nobr>힐링</nobr></label></span>
                        <span><input id="딜러" hidden type="checkbox"><label for="딜러"><nobr>딜러</nobr></label></span>
                        <span><input id="지원" hidden type="checkbox"><label for="지원"><nobr>지원</nobr></label></span>
                        <span><input id="코스트+" hidden type="checkbox"><label for="코스트+"><nobr>코스트+</nobr></label></span>
                        <span><input id="생존형" hidden type="checkbox"><label for="생존형"><nobr>생존형</nobr></label></span>
                        <span><input id="범위공격" hidden type="checkbox"><label for="범위공격"><nobr>범위공격</nobr></label></span>
                        <span><input id="방어형" hidden type="checkbox"><label for="방어형"><nobr>방어형</nobr></label></span>
                        <span><input id="감속" hidden type="checkbox"><label for="감속"><nobr>감속</nobr></label></span>
                        <span><input id="디버프" hidden type="checkbox"><label for="디버프"><nobr>디버프</nobr></label></span>
                        <span><input id="쾌속부활" hidden type="checkbox"><label for="쾌속부활"><nobr>쾌속부활</nobr></label></span>
                        <span><input id="강제이동" hidden type="checkbox"><label for="강제이동"><nobr>강제이동</nobr></label></span>
                        <span><input id="소환" hidden type="checkbox"><label for="소환"><nobr>소환</nobr></label></span>
                        <span><input id="로봇" hidden type="checkbox"><label for="로봇"><nobr>로봇</nobr></label></span>
                        <span><input id="tag" name="tag" type="hidden" value=""></span>
                    </td>
                </tr>
                <tr class="buttons">
                    <td colspan="2">
                        <div class="reset">초기화</div>
                    </td>
                </tr>
                <tr class="buttons">
                    <td colspan="2">
                        <div class="search">태그 검색</div>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
        <div class="result">
            <table>
                <thead>
                <tr>
                    <th>태그</th>
                    <th>오퍼레이터</th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </section>
</main>
</body>
</html>