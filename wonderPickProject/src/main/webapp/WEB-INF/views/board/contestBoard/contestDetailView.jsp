<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<style>
    #all_area{
        width: 1300px;
        height: auto;
        margin: auto;
    }
    #main_area{
        box-shadow: 1px 1px 10px rgb(200, 200, 200) ;
        border-radius: 20px;
        margin: auto;
        width: 900px;
        padding: 20px;
        margin-top:20px;
        height: auto;
    }
    #thumbnail_image{
        width: 200px;
        height: 200px;
    }
    .image{
        width: 100px;
        height: 100px;
        margin: auto;
        border: 1px solid black;
    }
    #header_area{
        border: 1px solid black;
        margin: auto;
    }


    #header_table{
        margin: auto;
    }
  
    .vote_heart{
        color: red;
        font-size: 80px;
    }
   
    #heart_area{
        text-align: center;
        font-size: 80px;
    }

    #body_area{
        margin: auto;
    }
    #buy_btn{
        width: 100%;
        height: 50px;
        color: white;
        background-color: pink;
    }
</style>
</head>
<body>

    <jsp:include page="../../common/header.jsp" />


   <div id="all_area">
    <div id="main_area">

        <div id="header_area">
                <table border="1" id="header_table">
                    <tr>
                        <td rowspan="4">
                            <div>
                                <img src="${ b.get(0).filePath }" alt="" id="thumbnail_image">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span>
                                <h1>
                                    ${ b.get(0).boardTitle }
                                </h1>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span>
                                닉네임 :${ b.get(0).nickName }
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span>
                                <h3>
                                    등록자 희망 판매가 : ${ b.get(0).price } 
                                </h3>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <button id="buy_btn" onclick="kakaoPay();">구매하기</button>
                        </td>
                    </tr>
                </table>
        </div>

        <div id="body_area" align="center">

            <div>
                ${ b.get(0).boardContent }
            </div>

            <div id="heart_area">
                <c:choose>
                    <c:when test="${ b.get(0).memberNo != 0 and b.get(0).memberNo != null }" >
                        <span class="vote_heart">♥</span>
                    </c:when>
                    <c:otherwise>
                        <span class="vote_heart">♡</span>
                    </c:otherwise>
                </c:choose> 

                <span id="vote_count">투표수 자리</span>
            </div>
    
            <div id="image_area">
                <c:forEach items="${ b }" var="b">

                    <img src="${ b.filePath }" alt="" class="image">

                </c:forEach>
            </div>
        </div>
    </div>
   </div>

   <script>

        $(function(){
           selectVoteLike();
        });

        // selectVote
        function selectVoteLike(){
            $.ajax({
                url : 'selectVoteLike.ct',
                data : {
                    boardNo : ${ b.get(0).boardNo }
                },
                success : function(result){
                    //alert('selectVoteLike success!!')
                    console.log(result)
                    console.log($('.vote_heart').html())
                    //$('#vote_count').html(result)


                    // $('.vote_heart').one("click", function(){
                    //     if($('.vote_heart').html() == '♥'){
                    //         confirm('투표를 취소하시겠습니까?')
                    //         deleteVote();
                    //     }
                    //     else if($('.vote_heart').html() == '♡'){
                    //         confirm('투표를 진행하면 중복투표는 불가능합니다. 진행하시겠습니까? ')
                    //         updateVote();
                    //     }
                    // })

                   
                },
                error : function(){
                    alert('selectVoteLike error!!!!')
                }
            });
        };

        // updateVote
        function updateVote(){
            $.ajax({
                url : 'updateVoteLike.ct',
                data : {
                    boardNo : ${ b.get(0).boardNo }
                },
                success : function(result){
                    alert('updateVote success!!')
                    $('.vote_heart').html('♥');
                    selectVoteLike();
                },
                error : function(){
                    alert('updateVote error !!!!')
                }
            });
        };

        // deleteVote
        function deleteVote(){
            $.ajax({
                url : 'deleteVote.ct',
                data : {
                    boardNo : ${ b.get(0).boardNo }
                },
                success : function(){
                    alert('delete success!!!!')
                    $('.vote_heart').html('♡');
                    selectVoteLike();

                }
            })
        }



        // 결제 카카오 스크립트

        function kakaoPay() {

           let boardTitle = '${ b.get(0).boardTitle }'
           let price = ${ b.get(0).price } 
            
            $.ajax({
                url : 'kakaoPay.ko',
                data : {
                    item_name : boardTitle,
                    quantity : 1,
                    total_amount : price 
                },
                success : function(data) {
                    window.open(data.next_redirect_pc_url);
                }
            });
        }
    

   </script>

</body>
</html>