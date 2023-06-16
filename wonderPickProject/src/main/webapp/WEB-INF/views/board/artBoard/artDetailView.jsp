<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Document</title>
    <style>
        .content {
            /* background-color:rgb(247, 245, 245); */
            width:900px;
            margin:auto;
            margin-top: 150px;
        }
        .detail{
            float: left;
            /* display: inline-block; */
            width : 65%;
            margin-right:20px;
            margin-bottom: 50px;
        }        
        .detail_img{
            padding-right: 1px;    
            width: 100%;
        }
        .artist{
            display: inline-block;
            width : 30%
        }
        .list{
            width : 143px;
            display: inline-block;
        }
        .t_align_right{
            text-align: right;
        }
        .t_align_left{
            text-align: left;
        }
        .op_title{
            text-align: center;
            background-color: lightslategray;
        }



        /* 사이즈 */
        .width{
            width:100%;
        }
        .h_10px{
            height:10px;
        }


        /* 공간크기 */
        .p_10px{
            padding: 10px;
        }

        .center{
            margin: 0 auto;
            align-content: center;
            text-align:center
        }

        /* 구매리뷰 */
        .review_all_div{
            padding:10px;
        }
        .review_img{
            width:100%;
            height:100%;
        }

        /* 문의 댓글 */
        .inquire_img{
            border-right: 1px solid lightslategray;
        }
     

    </style>
</head>
<body>
	<jsp:include page="../../common/header.jsp" />
    <div class="content">

        <!-- 여기는 제품 사진 및 정보 -->
        <div class="detail" align="center">

            <div class="">
            	<c:forEach items="${boardImage}" var="img">
	            	<c:choose>
	            		<c:when test="${ img.fileLevel eq 1 }">
	            			<div class="">
			                    <img class="detail_img" src="${img.modifyName}" alt="">
			                </div>
	            		</c:when>
	            		<c:when test="${ img.fileLevel eq 2 }">
	            			<div class="list">
			                    <img class="detail_img" src="${img.modifyName}" alt="">
			                </div>
	            		</c:when>
	            	</c:choose>
            	</c:forEach>
            </div>
            <br><br>



            <div>
                ★★★☆☆  3.1( xx개 평가 )  
            </div>
            <br><br><hr><br>



            <div>
                <label for="" onclick="move('explain')">상세설명</label> |
                <label for="" onclick="move('refund_rull')">취소 및 환불규정</label> |
                <label for="" onclick="move('review_all_div')">구매리뷰</label> |
                <label for="" onclick="move('inquire_reply')">문의 댓글</label> |
            </div>
            <br><br>

            <div>
                <h3>[ 상세 설명 ]</h3>
            </div>
            <br><br><br>
            
            <!-- 설명이 들어갈 div -->
            <div id="explain"></div>

            <br><br><br>

            <div>
                <h3>[ 취소 및 환불 규정 ]</h3>
            </div>
            <hr>

            <div id="refund_rull">
                <p>
                    것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의
                    따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도
                    그러므로 그들은 이상의 보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며
                </p>
            </div>
            <br><br><br><br><br>


            <div>
                <h3>[ 구매 리뷰 ]</h3>
            </div>
            <hr><br>

            <div id="review_all_div">
                <table>

                    <!-- 여기 부분 반복 -->
                    <tr>
                        <td class="h_10px">아이디</td>
                        <td rowspan="4" width="30%">
                            <img class="review_img" src="https://www.maykids.co.kr/web/product/big/202305/7b6b4fafdd1618db5d2560abfffa7ae2.gif">
                        </td>
                    </tr>
                    <tr>
                        <td class="h_10px">★★★★☆</td>
                    </tr>
                    <tr>
                        <td class="h_10px">날짜</td>
                    </tr>
                    <tr>
                        <td class="h_10px">내용</td>
                    </tr>
                </table>
            </div>

            <hr>


            <br><br>

            <div id="">
                <h3>[ 문의 댓글 ]</h3>
                <hr><br>
                <table id="inquire_reply" class="t_align_left">
                    <tr>
                        <td class="p_10px inquire_img" width="15%" rowspan="2">
                            <img class="width" src="https://www.maykids.co.kr/web/product/big/202305/7b6b4fafdd1618db5d2560abfffa7ae2.gif">
                        </td>
                        <td width="70%" style="padding-left:10px;">아이디</td>
                        <td width="15%" rowspan="3">
                            <!--
                                입력한 사람한텐 삭제,
                                아닌 사람한텐 신고
                            -->
                            <button>삭제 또는 신고</button>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-left:10px;">댓글 내용 : 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의</td>
                    </tr>
                </table>


                <br>
                

                <textarea class="width" name="" id="" rows="10" maxlength="500" style="resize:none;"></textarea>


                <div class="center width">
                    <button>작성하기</button>
                </div>
                
            </div>


            <br><br><br><br><br>


        </div>
        <!-- 왼쪽 끝 -->














        




    <!-- 오른쪽 정보 -->
        <div class="artist" style="margin-left:10px;">
                                                        <!-- 작가 작품 정보 -->
            <div>
                <table class="width">
                    <tr>
                        <th style="font-size: 35px;">❤</th>
                        <td class="t_align_right">
                            <c:if test="${member.memberNo eq artBoard.board.boardNo}">
                                <button>수정</button>
                            </c:if>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="font-size: 25px; font-weight:bold;">${artBoard.board.boardTitle}</td>
                    </tr>
                </table>
            </div>

            <hr>

            <div>
                <table class="width">
                    <tr>
                        <td rowspan="2" style="width:100px;"><img class="detail_img" src="${artboard.memberImage.memberModifyName}" alt=""></td>
                        <td style="font-size: 30px;">${artBoard.member.nickName}</td>
                    </tr>
                    <tr>
                        <td style="font-size: 20px;">★★★★☆</td>
                    </tr>
                </table>
            </div>

            <hr>
            <br>
                                                        <!-- 상세옵션 -->
            <div class="op_title">
                <h3 class="op_title width">상세옵션</h3>
            </div>
            <div class="">
                <table class="width">
                    <tr>
                        <td>제출파일 유형</td>
                        <td class="t_align_right">${artBoard.fileType}</td>
                    </tr>
                    <tr>
                        <td>해상도</td>
                        <td class="t_align_right">${artBoard.dpi}</td>
                    </tr>
                    <tr>
                        <td>기본사이즈</td>
                        <td class="t_align_right">${artBoard.defaultSize}</td>
                    </tr>
                    <tr>
                        <td>수정 횟수</td>
                        <td class="t_align_right">${artBoard.modifyCount}</td>
                    </tr>
                    <tr>
                        <td>작업기간</td>
                        <td class="t_align_right">${artBoard.workday}</td>
                    </tr>
                </table>
            </div>
            <br><br>

                                      <!-- 가격옵션 -->
                                      
            

            <div class="op_title">
                <h3 class="op_title width">가격 옵션</h3>
            </div>
            <div class="">
                <table class="width">
                    <!-- 여기서부터 -->
                    <c:forEach items="${optionList}" var="option">
                    	<tr>
	                        <td>${ option.mainOp }</td>
	                        <td class="t_align_right">
	                            <select class="select" onchange="choice();" style="width:70%;">
	                            	<option value="0">===</option>
									<c:forEach items="${ option.detailOption }" var="detail">
										<option  value="${ detail.price }" align="center" >
											${ detail.detail }&nbsp;&nbsp;&nbsp;&nbsp;${ detail.price }원 
										</option>
									</c:forEach>
	                            </select>
	                        </td>
	                    </tr>
                    </c:forEach>
                    <!-- 여기까지 반복 -->
                </table>
            </div>
            <br><br>

                                                        <!-- 굿즈옵션 -->
            <div class="">
                <h3 class="op_title width">굿즈 옵션</h3>
            </div>
            <div class="">
                <!-- <table class="width">
                    <tr>
                        <td>제품</td>
                        <td class="t_align_right">
                            <select name="" id="">
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>사이즈</td>
                        <td class="t_align_right">
                            <select name="" id="">
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>주문수량</td>
                        <td class="t_align_right">
                            <select name="" id="">
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>포장방식</td>
                        <td class="t_align_right">
                            <select name="" id="">
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                            </select>
                        </td>
                    </tr>
                </table> -->
            </div>
            <hr><br>

            <div>
                <table class="width">
                    <tr>
                        <td class="op_subTitle" style="font-size:20px; font-weight: bolder;">결제금액</td>
                        <td class="t_align_right" id="totalPrice">${ artBoard.price }</td>
                    </tr>
                </table>
            </div>
            <br><hr><br>

            <div id="btnRequest" class="center">
                <button onclick="toChat();">작가에게 주문요청</button>
            </div>

            <script>

                function toChat(){
                    let requestArr = [];
                    let priceArr = [];
                    
                    // querySelectorAll로 잡으면 type면서도 충돌이 일어날 가능성이 높음
                    // let options = document.querySelectorAll('.select > option:checked');
                    let options = $('.select > option:checked');
                   
                    for(var i = 0; i < options.length; i++){
                        if(options[i].text != '==='){
                            priceArr.push(options[i].value);
                            requestArr.push(options[i].text.replace(options[i].value + '원', "").trim());
                        }
                    }
                    let requestStr = requestArr.join(",");
                    let priceStr = priceArr.join(",");
                    
                    console.log(options)
                    console.log(requestStr);
                    console.log(priceStr);
                    // let f = document.createElement('form');
                    
                    // let requestInput = document.createElement('input');
                    // requestInput.setAttribute('tyep', 'hidden');
                    // requestInput.setAttribute('name', 'addPrices');
                    // requestInput.setAttribute('value', requestStr);
                    
                    // let priceInput = document.createElement('input');
                    // priceInput.setAttribute('type', 'hidden');
                    // priceInput.setAttribute('name', 'request');
                    // priceInput.setAttribute('value', priceStr);

                    // f.append(requestStr)
                    // f.append(priceStr);
                    // f.setAttribute('method', 'post');
                    // f.setAttribute('action', 'chating.co');

                    // let btnRequest = document.getElementById('btnRequest');
                    // btnRequest.appendChild(f);
                    // f.submit();

                    // for(let option of options){
                    //     if(option.text != '==='){
                    //         console.log("asd")
                    //     }
                    // }
                    // for(let option2 in options){
                    //     console.log(option2);
                    //     if(option2.text != '==='){
                    //         console.log("asd")
                    //     }
                    // }

                }


            </script>

        </div>
<!-- 오른쪽 정보 끝 -->
        
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>



    <script>
        /* 상세설명 div */
        window.onload = () => {
            let boardContent = JSON.parse('${ artBoard.board.boardContent }');
            let explain = document.getElementById('explain');
            for(var i = 0; i < boardContent.length; i++){
                if(boardContent[i].type == 'text'){
                    let p = document.createElement('p');
                    p.innerHTML = boardContent[i].data;
                    explain.append(p)
                }
                else{
                    let explainImg = document.createElement('img');
                    explainImg.setAttribute("src", boardContent[i].data);
                    explainImg.setAttribute("width", '80%');
                    explain.append(explainImg);
                }
            }
        }
        $(window).on('load', function(){
            $('#character_illustration').css('color', '#FF8399')
        });

        // 클릭 시 해당 글 위치로 이동
        function move(name){
            var location = document.getElementById(name).offsetTop;
            window.scrollTo({top:location - 200, behavior:"smooth"});
        }
		
		function choice(){
			let number = parseInt('${ artBoard.price }');
            let option = document.querySelectorAll('.select > option:checked');
			for(var i = 0; i < option.length; i++){
                number += parseInt(option[i].value);
            }
            let price = document.getElementById('totalPrice');
            price.innerHTML = number;
		}

        











    </script>

</body>
</html>