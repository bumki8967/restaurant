$(document).ready(function() {
	var regexPw = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
	var regexEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var regexTel = /^01(?:0|1|[6-9])(?:\\d{3}|\\d{4})\\d{4}$/; 
	
	
	$("#registBtn").click(function() {
		if ($("#user_id").val() == "") {
			alert("아이디를 입력해주세요.");
			return;
		} else if ($("#user_pw").val() == "") {
			alert("비밀번호를 입력해주세요.");
			return;
		/**
		} 
		else if (!$("#user_pw").val().match(regexPw)) {
			alert("비밀번호 형식을 확인해주세요.\n 최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자");
			return;
		 */
		} else if ($("#user_pw_re").val() == "") {
			alert("비밀번호를 다시 한번 입력해주세요.");
			return;
		/**
		} 
		else if (!$("#user_pw_re").val().match(regexPw)) {
			alert("비밀번호 형식을 확인해주세요.\n 최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자");
			return;
		 */
		} else if ($("#user_pw").val() != $("#user_pw_re").val()) {
			alert("비밀번호가 서로 다릅니다.");
			return;
		} else if ($("#name").val() == "") {
			alert("이름을 입력해주세요.");
			return;
		} else if ($("#email").val() == "") {
			alert("이메일을 입력해주세요.");
			return;
		} else if (!$("#email").val().match(regexEmail)) { 
			alert("이메일 형식에 맞지않습니다.");
			return;
		} else if ($("#tel").val() == "") {
			alert("전화번호를 입력해주세요.");
			return;
		/**
		} else if(!$("#tel").val().match(regexTel)) {
			alert("입력하신 전화번호 형식을 확인해주세요.\n ex) 01012345678");
			return;
		 */	
		} else if ($("#birthday").val() == "") {
			alert("생년월일을 입력해주세요.");
			return;
		} else if ($("#gender").val() == "") {
			alert("성별을 선택해주세요.");
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
		 
		 /**
		alert("회원가입이 완료되었습니다.");
		$("#registForm").attr('action', '/user/userRegist.do');
		$("#registForm").submit();
		 */
	});
	
});


function duplicationUserId() {
			var user_id = $("#user_id").val();
			
			if (user_id == "") {
				alert("아이디를 입력해주세요.");
				return;
			} else {
				$.ajax({
					type 	: "POST",
					url		: "/user/duplicateUserId",
					dataType: "JSON",
					data	: {
						user_id : user_id
					},
					success : function(data, status, xhr) {
						if (data == "1") {
							alert("이미 등록된 아이디 입니다.");
							return;
						} else {
							alert("사용 가능한 아이디 입니다.");
							$("#userIdChk").val("Y");
							return;
						}
					},
					error : function(error, status, xhr) {
						alert("error!" + error);
						return;
					}
				});
			}
		}

