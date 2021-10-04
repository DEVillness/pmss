<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
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
        <div>
            <input id="rankSelector5" hidden type="checkbox" checked><label for="rankSelector5" class="rank">★5</label>
            <input id="rankSelector4" hidden type="checkbox" checked><label for="rankSelector4" class="rank">★4</label>
            <input id="rankSelector3" hidden type="checkbox" checked><label for="rankSelector3" class="rank">★3</label>
            <input id="rankSelector2" hidden type="checkbox" checked><label for="rankSelector2" class="rank">★2</label>
            <input id="rankSelector1" hidden type="checkbox" checked><label for="rankSelector1" class="rank">★1</label>
        </div>
        <div>
            <label class="reset">초기화</label>
        </div>
    </section>
    <section class="calc">
        <form>
            <section class="rank" id="rank5">
                <div class="commodity" id="d32">
                    <div class="image"><img alt="D32강" src="resources/images/materials/d32.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="bipolar">
                    <div class="image"><img alt="바이폴라 나노플레이크 칩" src="resources/images/materials/bipolar.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="polymerizer">
                    <div class="image"><img alt="중합제" src="resources/images/materials/polymerizer.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="crystalline5">
                    <div class="image"><img alt="결정 전자 장치" src="resources/images/materials/crystalline5.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
            </section>
            <section class="rank" id="rank4">
                <div class="commodity" id="device4">
                    <div class="image"><img alt="개량 장치" src="resources/images/materials/device4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="ketone4">
                    <div class="image"><img alt="아케톤 팩" src="resources/images/materials/ketone4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="oriron4">
                    <div class="image"><img alt="이철 팩" src="resources/images/materials/oriron4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="ester4">
                    <div class="image"><img alt="폴리에스테르 팩" src="resources/images/materials/ester4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="sugar4">
                    <div class="image"><img alt="포도당 팩" src="resources/images/materials/sugar4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="orirock4">
                    <div class="image"><img alt="원암 팩" src="resources/images/materials/orirock4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="kohl4">
                    <div class="image"><img alt="화이트 호스 콜" src="resources/images/materials/kohl4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="grindstone4">
                    <div class="image"><img alt="고급연마석" src="resources/images/materials/grindstone4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="manganese4">
                    <div class="image"><img alt="망간 중합체" src="resources/images/materials/manganese4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="rma4">
                    <div class="image"><img alt="RMA70-24" src="resources/images/materials/rma4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="alloy4">
                    <div class="image"><img alt="열합금 팩" src="resources/images/materials/alloy4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="gel4">
                    <div class="image"><img alt="중합젤" src="resources/images/materials/gel4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="crystalline4">
                    <div class="image"><img alt="결정 회로" src="resources/images/materials/crystalline4.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
            </section>
            <section class="rank" id="rank3">
                <div class="commodity" id="device3">
                    <div class="image"><img alt="리뉴얼 장치" src="resources/images/materials/device3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="ketone3">
                    <div class="image"><img alt="아케톤 응집체 번들" src="resources/images/materials/ketone3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="oriron3">
                    <div class="image"><img alt="이철 번들" src="resources/images/materials/oriron3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="ester3">
                    <div class="image"><img alt="폴리에스테르 번들" src="resources/images/materials/ester3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="sugar3">
                    <div class="image"><img alt="포도당 번들" src="resources/images/materials/sugar3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="orirock3">
                    <div class="image"><img alt="원암 큐브 번들" src="resources/images/materials/orirock3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="kohl3">
                    <div class="image"><img alt="로식 콜" src="resources/images/materials/kohl3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="grindstone3">
                    <div class="image"><img alt="연마석" src="resources/images/materials/grindstone3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="manganese3">
                    <div class="image"><img alt="망간 광석" src="resources/images/materials/manganese3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="rma3">
                    <div class="image"><img alt="RMA70-12" src="resources/images/materials/rma3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="alloy3">
                    <div class="image"><img alt="열합금" src="resources/images/materials/alloy3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="gel3">
                    <div class="image"><img alt="젤" src="resources/images/materials/gel3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="crystalline3">
                    <div class="image"><img alt="결정 부품" src="resources/images/materials/crystalline3.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
            </section>
            <section class="rank" id="rank2">
                <div class="commodity" id="device2">
                    <div class="image"><img alt="장치" src="resources/images/materials/device2.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="ketone2">
                    <div class="image"><img alt="아케톤 응집체" src="resources/images/materials/ketone2.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="oriron2">
                    <div class="image"><img alt="이철" src="resources/images/materials/oriron2.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="ester2">
                    <div class="image"><img alt="폴리에스테르" src="resources/images/materials/ester2.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="sugar2">
                    <div class="image"><img alt="포도당" src="resources/images/materials/sugar2.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="orirock2">
                    <div class="image"><img alt="원암 큐브" src="resources/images/materials/orirock2.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
            </section>
            <section class="rank" id="rank1">
                <div class="commodity" id="device1">
                    <div class="image"><img alt="파손된 장치" src="resources/images/materials/device1.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="ketone1">
                    <div class="image"><img alt="디케톤" src="resources/images/materials/ketone1.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="oriron1">
                    <div class="image"><img alt="이철 조각" src="resources/images/materials/oriron1.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="ester1">
                    <div class="image"><img alt="에스테르 원료" src="resources/images/materials/ester1.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="sugar1">
                    <div class="image"><img alt="대체당" src="resources/images/materials/sugar1.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
                <div class="commodity" id="orirock1">
                    <div class="image"><img alt="원암" src="resources/images/materials/orirock1.png"></div>
                    <div>
                        <input type="number" min="0" placeholder="필요">
                        <input type="number" min="0" placeholder="보유">
                        <input disabled="disabled" placeholder="부족">
                    </div>
                </div>
            </section>
        </form>
    </section>
</main>
</body>
</html>
