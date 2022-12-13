function add(){
	if(frm.REGIST_MONTH.value.length==0){
		alert("수강월이 입력되지 않았습니다.");
		frm.REGIST_MONTH.focus();
		return false;
	}
	else if(frm.C_NAME.value==0){
		alert("회원명이 선택되지 않았습니다.");
		frm.C_NAME.focus();
		return false;
	}
	else if(frm.CLASS_AREA[0].checked==false &&
			frm.CLASS_AREA[1].checked==false &&
			frm.CLASS_AREA[2].checked==false &&
			frm.CLASS_AREA[3].checked==false &&
			frm.CLASS_AREA[4].checked==false){
				alert("강의장소가 선택되지 않았습니다");
				frm.CLASS_AREA.focus();
				return false;
			}
	else if(frm.CLASS_NAME.value==0){
		alert("강의명이 선택되지 않았습니다.");
			frm.CLASS_NAME.focus();
			return false;
		
	}
	else 
		alert("수강신청이 완료되었습니다!");
	    document.frm.submit();
		return true;
	}
	
	function res(){
		alert("정보를 지우고 처음부터 다시 입력합니다!");
		document.frm.reset();
	}			
	
	function getvalue(C_NO){ //select에서 선택된 value값을 C_NO로 가져옴
		document.getElementById("C_NO").value = C_NO; //C_NO에 데이터 입력하기
		C_NO2 = C_NO;
	}
	function getvalue2(TUITION){ //select에서 선택된 value값을 tuition으로 가져옴
		if(C_NO2 >= 20000)
		document.getElementById("TUITION").value = TUITION/2;
		
		else
		document.getElementById("TUITION").value = TUITION;
		
}	