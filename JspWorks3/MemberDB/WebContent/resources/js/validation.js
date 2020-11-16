/**
 * 회원 등록 폼 유효성 검사
 */

function checkForm(){
	var form = document.regForm;
	var id = form.memberId.value;
	var pwd1 = form.passwd.value;
	var pwd2 = form.passwd_confirm.value;
	var name = form.name.value;
	
	var regExId = /^[a-zA-Z0-9]{4, 10}$/; //영문 대소문자, 숫자 조합 4자에서 10자까지 입력
	
	if(!regExId.test(id) || id==""){
		alert("아이디는 4자리의 숫자만 가능합니다.");
		form.id.focus();
		return false;
	} else if (pwd1.length < 5 || pwd1.length > 12){
		alert("비밀전호는 5자에서 12자까지 입력해 주세요.");
		form.pwd1.select();
		return false;
	} else if(pwd1 != pwd2){
		alert("비밀번호를 동일하게 입력해 주세요.");
		form.pwd1.select();
	} else if(name == ""){
		alert("이름은 필수 입력사항입니다.");
		form.name.focus();
		return false;
	} else {
		form.submit();
	}
}