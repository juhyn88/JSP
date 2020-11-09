/**
 * 	유효성 검사
 */
function checkForm(){
	var form = document.regform;
	var id = form.memberId.value;	
	var pwd1 = form.passwd.value;
	var pwd2 = form.passwd_confirm.value;
	var name = form.name.value;
 	
	var regExId = /^[0-9]{4}$/;									//4자리의 숫자만 가능
	
	if(!regExId.test(id) || id==""){									//id 체크
		alert("아이디는 4자리의 숫자만 가능합니다.");		//비밀번호 체크
		form.memberId.focus();
		return false;
	}else if(pwd1.length < 5 || pwd1.length > 12){
		alert("비밀번호는 5자에서 12자까지 입력해 주세요");
		form.passwd.select();
		return false;
	}else if(pwd1 != pwd2){												//비밀번호 확인 체크
		alert("비밀번호를 동일하게 입력해 주세요.")
	}else if(name == ""){													//이름 체크
		alert("이름은 필수 입력사항입니다.")
		form.name.focus();
		return false;
	}else{
		form.submit();
	}
}