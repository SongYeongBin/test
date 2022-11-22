<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@include file="../include2/head.jsp" %>
<%@include file="../include2/menu.jsp" %>
<main id="content" class="content" role="main">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@include file="../include2/head.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#profileUpdateBtn").on("click", function(){
			location.href="${contextPath}/mypage/profileUpdateView";
		})
		
	})
</script>

<div data-v-76574781="" class="container customer md">
	<%@include file="../include2/mypageMenubar.jsp" %>

	<form class="mypage" action="mypage" method="GET">
	<div data-v-88eb18f6="" data-v-0067a928="" class="content_title border">
					<div data-v-88eb18f6="" class="title">
					<h3 data-v-88eb18f6="">프로필정보</h3>
					<br>
					</div>
					</div>
	
<!--  <div class="profilebox"> -->
		<div class="profile_group">
		
		<h6 class="group-title">아이디</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_id }</div>
			</div>
				</div>
				
				<div class="profile_group">
		<h6 class="group-title">이름</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_name }</div>
			</div>	
				</div>
				<div class="profile_group">
		<h6 class="group-title">닉네임</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_nickname }</div>
			</div>	
				</div>
				<div class="profile_group">
		<h6 class="group-title">우편번호</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_address }</div>
			</div>	
				</div>
				<div class="profile_group">
		<h6 class="group-title">도로명주소</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_address1 }</div>
			</div>	
				</div>
				<div class="profile_group">
		<h6 class="group-title">상세주소</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_address2 }</div>
			</div>	
				</div>
				<div class="profile_group">
		<h6 class="group-title">전화번호</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_phonenum }</div>
			</div>	
				</div>
				<div class="profile_group">
		<h6 class="group-title">이메일</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_email1 }</div>
			</div>	
				</div>
				<div class="profile_group">
		<h6 class="group-title">생일</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_birth }</div>
			</div>	
				</div>
				<div class="profile_group">
		<h6 class="group-title">성별</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_gender }</div>
			</div>	
				</div>
				<div class="profile_group">
		<h6 class="group-title">캐쉬</h6>
			
			<div class="unit">
			<div class="profileid">${user.mem_cash}</div>
		
			</div>	
				</div>

			
			
	
	
		</form>
			</div> <!--  end of profilebox -->
	<!-- 	</div>  -->
		
		
		
		
		<a class="scroll-down icon-arrow-left" href="#content" data-offset="-45"><span class="hidden">Scroll Down</span></a>
	
	
		</main>
	<%@include file = "../include2/script.jsp" %>
		<%@include file = "../include2/footer.jsp" %>



	
	   
		
		
		
		


   
   
