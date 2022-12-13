<%@page import="java.text.DecimalFormat"%>
<%@ include file="db.jsp" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tlist</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section style="position:fixed; top:70px; left:0px; width:100%; height:100%; background-color:lightgray">

<h2 style="text-align:center"> 강사조회 </h2>
<form style="display:flex; align-items:center; justify-content:center; text-align:center">
<table border="1"> <!-- form에서 넣을수없는 스타일을 주기 위하여 테이블 작성 -->
	<tr>
		<td style="width:150px"> 강사코드 </td>
		<td style="width:150px"> 강사명 </td>
		<td style="width:150px"> 강의명 </td>
		<td style="width:150px"> 수강료 </td>
		<td style="width:150px"> 강사자격취득일 </td>
	
	</tr>
	<%
	request.setCharacterEncoding("UTF-8");
	
	try{
		String sql="select * from TBL_TEACHER_202201 order by TEACHER_CODE";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			int class_price = rs.getInt(4);
			DecimalFormat transformat = new DecimalFormat("￦ ###,###,###");
			String price = transformat.format(class_price);
			
			String teach_regist_date = rs.getString(5);
			String date = teach_regist_date.substring(0,4) + "년" + teach_regist_date.substring(4,6) + "월" + teach_regist_date.substring(6,7) + "일";
		%>		
		<tr>
			<td> <%=rs.getString(1) %> </td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=rs.getString(3) %> </td>
			<td> <%= price %> </td>
			<td> <%=date %> </td>
		</tr>
		<% 	
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	%>
	
</table>
</form>

</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>