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
    <title>굿즈정보수정페이지</title>
    <style>
        .wide{
         
        }
       
    </style>
</head>
<body>

<jsp:include page="../../common/header.jsp" />

<br><br>
    <div class="topouter" align="center">
        <h2 style="color: rgb(255, 131, 153); font-weight: bolder;" align="center">굿즈 상품 등록</h2><br>
        <hr style="border: 1px solid gray; width: 500px;" >
        <br>

        <form action="update.go" method="post" enctype="multipart/form-data">
        <input type="hidden" name="boardNo" value="${g.boardNo }"/>
        <table width="00px" style="text-align: center; " align="center" >
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">판매자</h5></td>
                <td colspan="3" style="float: left; margin-left : 30%; font-weight:bold; font-size : 20px;">${g.nickName }</td>
            </tr>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">카테고리</h5></td>
                <td style="float: left; margin-left: 80px;">
                    <select name="goodsCategory" id="" required value="${g.goodsCategory }">
                        <option value="FASHION">패션</option>
                        <option value="STATIONERY">문구</option>
                        <option value="KITCHEN">주방</option>
                        <option value="INTERIOR">인테리어</option>
                        <option value="ETC">기타</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">상품명</h5></td>
                <td colspan="3"><input type="text" style="width: 85%;" name="boardTitle" value="${g.boardTitle }" required></td>
            </tr>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">상품가격</h5></td>
                <td ><input type="number" style="width: 50%;" name="price" value="${g.price }" required>원 </td>
            </tr>
            
            <c:choose>
            <c:when test="${not empty bi }">
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">상품 대표 이미지</h5></td>
                <td align="center" colspan="3">
                    <img id="titleimg" name="reThumbnailUpFile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" >
                </td>
            </tr>
            
            <c:choose>
            <c:when test="${bi.fileLevel.   }">
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">상세이미지</h5></td>
                <td><img id="contentImg1" name="reUpfile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" width="200" height="200" value=""></td>
                <td><img id="contentImg2" name="reUpfile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" width="200" height="200"></td>
                <td><img id="contentImg3" name="reUpfile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" width="200" height="200"></td>
            </tr>
            </c:when>
            <c:otherwise>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">상세이미지</h5></td>
                <td><img id="contentImg1" name="reUpfile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" width="200" height="200"></td>
                <td><img id="contentImg2" name="reUpfile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" width="200" height="200"></td>
                <td><img id="contentImg3" name="reUpfile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" width="200" height="200"></td>
            </tr>
            </c:otherwise>
            </c:choose>
            </c:when>
            <c:otherwise>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">상품 대표 이미지</h5></td>
                <td align="center" colspan="3">
                    <img id="titleimg" name="reThumbnailUpFile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" >
                </td>
            </tr>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">상세이미지</h5></td>
                <td><img id="contentImg1" name="reUpfile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" width="200" height="200"></td>
                <td><img id="contentImg2" name="reUpfile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" width="200" height="200"></td>
                <td><img id="contentImg3" name="reUpfile" src="https://t4.ftcdn.net/jpg/04/99/93/31/360_F_499933117_ZAUBfv3P1HEOsZDrnkbNCt4jc3AodArl.jpg" alt="" width="200" height="200"></td>
            </tr>
            </c:otherwise>
            </c:choose>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">상품설명</h5></td>
                <td colspan="3"><textarea name="boardContent" id="" cols="30" rows="10" style="width: 100%;" value="${g.boardContent }"required></textarea></td>
            </tr>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">작업소요일</h5></td>
                <td style="float: left;"><input type="text" style="width: 45%;" name="workday" required value="${g.workday }">일</td>
            </tr>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">시안개수</h5></td>
                <td style="float: left; margin-left: 80px;"><select name="draft" id="" value="${g.draft }">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
               </td>
            </tr>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">추가시안비</h5> </td>
                <td style="float: left;">갯수별  <input type="text" style="width: 40%;" name="addDraft" value="${g.addDraft }">원</td>
            </tr>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">기본수정횟수</h5></td>
                <td style="float: left;"><input type="text" style="width: 45%;" name="modifyCount" value="${g.modifyCount }">회</td>
            </tr>
            <tr>
                <td class="wide"><h5 style="font-weight: bolder;">추가수정비</h5></td>
                <td style="float: left;">횟수별  <input type="text" style="width: 40%;" name="addModify" value="${g.addModify }">원</td>
            </tr>
            <tr>
                <td colspan="4"><hr style="width: 100%; border: 1px solid gray;" ></td>
                <td></td>
            </tr>
    </table>
    	<div align="center">
                    <button type="submit" class="btn btn-primary" style="width: 200px; height: 40px; 
                     background-color:  rgb(255, 131, 153); color: black; border: none;">굿즈 판매 요청하기</button>
                    <button type="reset" class="btn btn-danger" style="width: 200px; height: 40px; 
                background-color:  black ; color:rgb(255, 131, 153); border: none;">작성 취소하기</button>
       </div>
    </form>

    </div>

    <script>
    // 숫자 3자리 콤마찍기

        Number.prototype.formatNumber = function(){

            if(this==0) return 0;

            let regex = /(^[+-]?\d+)(\d)/;

            let nstr = (this + '');

            while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');

            return nstr;

        };
    </script>
         

    <!--  판매자는 최소 하나는 첨부해야함 -->
    <div id="file-area">
        <input type="file" id="file1" name="upfile" required onchange="loadImg(this, 1);">
        <input type="file" id="file2" name="upfile" onchange="loadImg(this, 2);">
        <input type="file" id="file3" name="upfile" onchange="loadImg(this, 3);">
        <input type="file" id="file4" name="upfile" onchange="loadImg(this, 4);">
    </div>

    <script>

        $(function(){
            $('#file-area').hide(); 
            
            // 이미지 클릭시  첨부파일 넣을 수 있도록
            
            $('#titleimg').click(function(){ 
                $('#file1').click();
            })

            $('#contentImg1').click(function(){ 
                $('#file2').click();
            })

            $('#contentImg2').click(function(){  
                $('#file3').click();
            })

            $('#contentImg3').click(function(){ 
                $('#file4').click();
            })
        })

        function loadImg(inputFile, num) {

            if(inputFile.files.length == 1){ // 파일이 첨부된 경우
            let reader = new FileReader();
            reader.readAsDataURL(inputFile.files[0]);
            reader.onload = function(e){
                switch(num) {
                                case 1 : $('#titleimg').attr('src', e.target.result); break;
                                case 2 : $('#contentImg1').attr('src', e.target.result); break;
                                case 3 : $('#contentImg2').attr('src', e.target.result); break;
                                case 4 : $('#contentImg3').attr('src', e.target.result); break;
                            }
                        }

} else {
    switch(num) {
            case 1 : $('#titleimg').attr('src', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpizjtvgskfw6Wuu2sLTi2_1vW1gJgFPFtMw&usqp=CAU'); break;
            case 2 : $('#contentImg1').attr('src', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpizjtvgskfw6Wuu2sLTi2_1vW1gJgFPFtMw&usqp=CAU'); break;
            case 3 : $('#contentImg2').attr('src','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpizjtvgskfw6Wuu2sLTi2_1vW1gJgFPFtMw&usqp=CAU'); break;
            case 4 : $('#contentImg3').attr('src', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpizjtvgskfw6Wuu2sLTi2_1vW1gJgFPFtMw&usqp=CAU'); break;
        }

}
}
</script>


    
    
</body>
</html>