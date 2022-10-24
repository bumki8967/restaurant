var regexEmail 	= /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
var regexPw 	= /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/; 

$(document).ready(function() {
	// 회원가입 버튼 클릭 시
	$("#registBtn").click(function() {
		if ($("#user_id").val() == "") {
			alert("아이디를 입력해주세요.");
			$("#user_id").focus();
			return;
		} else if ($("#user_pw").val() == "") {
			alert("비밀번호를 입력해주세요.");
			$("#user_pw").focus();
			return;
		} else if (!$("#user_pw").val().match(regexPw)) {
			alert("비밀번호 형식을 확인해주세요.\n 최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자");
			$("#user_pw").focus();
			return;
		} else if ($("#user_pw_re").val() == "") {
			alert("비밀번호를 다시 한번 입력해주세요.");
			$("#user_pw_re").focus();
			return;
		} else if ($("#user_pw").val() != $("#user_pw_re").val()) {
			alert("비밀번호가 서로 다릅니다.");
			return;
		} else if (!$("#user_pw_re").val().match(regexPw)) {
			alert("비밀번호 형식을 확인해주세요.\n 최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자");
			$("#user_pw_re").focus();
			return;
		} else if ($("#name").val() == "") {
			alert("이름을 입력해주세요.");
			$("#name").focus();
			return;
		} else if ($("#email").val() == "") {
			alert("이메일을 입력해주세요.");
			$("#email").focus();
			return;
		} else if (!$("#email").val().match(regexEmail)) { 
			alert("이메일 형식에 맞지않습니다.");
			$("#email").focus();
			return;
		} else if ($("#tel_1").val() == "") {
			alert("연락처를 입력해주세요");
			$("#tel_1").focus();
			return;
		} else if ($("#tel_2").val() == "") {
			alert("연락처를 입력해주세요");
			$("#tel_2").focus();
			return;
		} else if ($("#tel_3").val() == "") {
			alert("연락처를 입력해주세요");
			$("#tel_3").focus();
			return;
		} else if (!$('input:radio[name=peopleType]').is(':checked')) {
			alert("구분을 선택해주세요.");
			return;
		} else if ($("#birthday").val() == "") {
			alert("생년월일을 입력해주세요.");
			$("#birthday").focus();
			return;
		} else if ($("#gender").val() == "") {
			alert("성별을 선택해주세요.");
			$("#gender").focus();
			return;
		} else if ($("#userIdChk").val() == "N") {
			alert("아이디 중복확인을 해주세요.");
			return;
		} else if ($("#emailChk").val() == "N") {
			alert("이메일 중복확인을 해주세요.");
			return;
		} else {
			alert("회원가입이 완료되었습니다.");
			$("#registForm").attr('action', '/user/userRegist.do');
			$("#registForm").submit();
		}
	});
	
});


// 중복 아이디 확인 
function duplicationUserId() {
	var user_id = $("#user_id").val();
	
	if (user_id == "") {
		alert("아이디를 입력해주세요.");
		return;
	} else {
		$.ajax({
			type 	: "POST",
			url		: "/user/duplicationUserId",
			dataType: "JSON",
			data	: {
				user_id : user_id
			},
			success : function(data) {
				if (data == "1") {
					alert("이미 등록된 아이디 입니다.");
					return;
				} else {
					alert("사용 가능한 아이디 입니다.");
					$("#userIdChk").val("Y");
					return;
				}
			},
			error : function(error) {
				alert("error!\n" + error);
				return;
			}
		});
	}
}




// 중복 이메일 확인
function duplicationEmail() {
	var email = $("#email").val();
	
	if (email == "") {
		alert("이메일을 입력해주세요.");
		return;
	} else if (!email.match(regexEmail)) {
		alert("이메일 형식을 확인해주세요.");
		return;
	} else {
		$.ajax({
			type	:	"POST",
			url		:	"/user/duplicationEmail",
			dataType:	"JSON",
			data	:	{
				email : email
			},
			success : function(data) {
				if (data == "1") {
					alert("이미 등록된 이메일입니다.");
					return;
				} else {
					alert("사용 가능한 이메일입니다.");
					$("#emailChk").val("Y");
					return;
				}
			},
			error : function(error) {
				alert("error!\n" + error);
			}
		});
	}
}