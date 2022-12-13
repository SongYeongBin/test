<%@page import="java.text.DecimalFormat"%>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salary</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section style="position:fixed; top:70px; left:0px; width:100%; height:100%; background-color:lightgray">

<h2 style="text-align:center"> 강사매출현황 </h2>

<form style="display:flex; align-items:center; justify-content:center; text-align:center"  >
	<table border="1">
	<tr>
		<td style="width:150px"> 강사코드 </td>
		<td style="width:150px"> 강의명 </td>	
		<td style="width:150px"> 강사명 </td>	
		<td style="width:150px"> 총매출 </td>	
	</tr>
	<%
	request.setCharacterEncoding("UTF-8");
	
	try{
		String sql = "select CL.TEACHER_CODE, CLASS_NAME, TEACHER_NAME, SUM(TUITION) SALARY " +
						"from TBL_TEACHER_202201 TE, TBL_CLASS_202201 CL " +
					"WHERE TE.TEACHER_CODE=CL.TEACHER_CODE GROUP BY CL.TEACHER_CODE, CLASS_NAME, TEACHER_NAME";
	    PreparedStatement pstmt = con.prepareStatement(sql);
	    ResultSet rs = pstmt.executeQuery();
	     while(rs.next()){
	    	 int TUITION = rs.getInt(4);
	    	 DecimalFormat transformat = new DecimalFormat("￦ ###,###");
	    	 String price = transformat.format(TUITION);
	    	 %>
	    	 <tr>
	    	 	<td> <%= rs.getString(1) %></td>
	    	 	<td> <%= rs.getString(2) %></td>
	    	 	<td style="text-align:right"> <%= rs.getString(3) %></td>
	    	 	<td style="text-align:right"> <%= price %></td>
	    	 
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