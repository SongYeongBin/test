<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>

<section style="position:fixed; top:70px; left:0px; width:100%; height:100%; background-color:lightgray">

<h2 style="text-align:center"> 수강신청 </h2>
<form method="post" action="i_action.jsp" name="frm" style="display:flex; align-items:center; justify-content:center">
	<table border="1">
		<tr>
			<td> 수강월 </td>
			<td> <input type="text" name="REGIST_MONTH" style="width:150px"> 예) 202203 </td>
		
		</tr>
		
		<tr>
			<td> 회원명 </td>
			<td> 
				<select name="C_NAME"  style="width:150px" onchange="getvalue(this.value)">
					<option value=""> 회원명 </option>
					<option value="10001"> 홍길동 </option>
					<option value="10002"> 장발장 </option>
					<option value="10003"> 임꺽정 </option>
					<option value="20001"> 성춘향 </option>
					<option value="20002"> 이몽룡 </option>
				</select>			
			</td>
		</tr>
		
		<tr>
			<td> 회원번호 </td>
			<td> <input id="C_NO" name="C_NO" readonly style="width:150px"> </td>
		
		</tr>
		
		<tr>
			<td> 강의장소 </td>
			<td> 
			<input type="radio" name="CLASS_AREA" value="서울본원"> 서울본원 
			 <input type="radio" name="CLASS_AREA" value="성남본원"> 성남본원 
			 <input type="radio" name="CLASS_AREA" value="대전본원"> 대전본원 
			 <input type="radio" name="CLASS_AREA" value="부산본원"> 부산본원
			 <input type="radio" name="CLASS_AREA" value="대구본원"> 대구본원 
			 </td>
		</tr>
		
		<tr>
			<td  style="text-align:center"> 강의명 </td>
			<td>
				<select name="CLASS_NAME"  style="width:150px" onchange="getvalue2(this.value)">
					<option value=""> 강의신청 </option>
					<option value="100000"> 초급반 </option>
					<option value="200000"> 중급반 </option>
					<option value="300000"> 고급반 </option>
					<option value="400000"> 심화반 </option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td> 수강료 </td>
			<td> <input id="TUITION" name="TUITION" readonly style="width:150px"> 원 </td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="button" value ="수강신청" onclick="add()"> &nbsp;
				<input type="button" value ="다시쓰기" onclick="res()">
			</td>
		</tr>
	</table>
	


</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>