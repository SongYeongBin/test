<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
	String REGIST_MONTH = request.getParameter("REGIST_MONTH");
	String C_NO = request.getParameter("C_NO");
	String CLASS_AREA = request.getParameter("CLASS_AREA");
	String TUITION = request.getParameter("TUITION");
	
	String CLASS_NAME = request.getParameter("CLASS_NAME");
	int TEACHER_CODE = Integer.parseInt(CLASS_NAME)/1000;
	
	try{
		String sql="INSERT INTO TBL_CLASS_202201 VALUES(?,?,?,?,?)";
		PreparedStatement pstmt =con.prepareStatement(sql);
		
		pstmt.setString(1, REGIST_MONTH);
		pstmt.setString(2, C_NO);
		pstmt.setString(3, CLASS_AREA);
		pstmt.setString(4, TUITION);
		pstmt.setInt(5, TEACHER_CODE);
		
		pstmt.executeUpdate();
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>