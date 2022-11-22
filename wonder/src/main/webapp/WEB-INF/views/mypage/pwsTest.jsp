<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@include file="../include2/head.jsp" %>
<%@include file="../include2/menu.jsp" %>


	<main id="content" class="content" role="main">
<div data-v-76574781="" class="container customer md">
	<%@include file="../include2/mypageMenubar.jsp" %>
	
	<script type="text/javascript">

		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#pwstest").on("click", function(){
				var password = document.getElementById('password').value; 
				alert(password);
				alert(${user.mem_password});
				if(password==""){
					alert("비밀번호를 입력해주세요.");
					$("#mem_password").focus();
					return false;
				}else if(${user.mem_password}!= password ){
					alert("비밀번호가 틀렸습니다.");
					$("#mem_password").focus();
					return false;
				}else if(${user.mem_password}== password){
					
					alert("그동안 이용해주셔서 감사합니다.");
				 	return true;
				}
					
			});
		});
		<c:if test="${msg == false}">
				alert("비밀번호가 맞지 않습니다.");
				</c:if>
	</script>
  
<h3 style="text-align : center">비밀번호 확인</h3> 
	<hr>
<form role="form" method="post" action="pwupdate">
		<div class="addmemberbox">
			<div class="form-group">
				<label></label> <input type="hidden" readonly
					name="mem_id" id="mem_id" class="form-control"  value="${mem_id}">
						<div class="textForm">
				<label>현재 비밀번호: <input type="password"
					name="mem_password" id="password3" class="form-control"  value="${mem_password}" placeholder="현재 비밀번호를 입력해주세요.">
					</label>
					</div>
				
			</div>
				<hr>
   <button type="submit" class="passwordfindbtn" onclick="pwtest1();" >수정완료</button> <button type="reset" class="passwordfindbtn">다시 입력</button>
	</div>
	</form>
		</div>
</main>	
	<footer class="site-footer clearfix">
	<%@include file = "../include2/footer.jsp" %>
	</footer>

<%@include file = "../include2/script.jsp" %>
