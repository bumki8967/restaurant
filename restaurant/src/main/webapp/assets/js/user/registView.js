$(document).ready(function() {
	
	$("#registBtn").click(function() {
		/**
		if ($("#user_id").val() == "") {
			alert("아이디를 입력해주세요.");
			return;
		} else if ($("#user_pw").val() == "") {
			alert("비밀번호를 입력해주세요.");
			return;
		} else if ($("#user_pw_re").val() == "") {
			alert("비밀번호를 다시 한번 입력해주세요.");
			return;
		} else if ($("#user_pw").val() != $("#user_pw_re").val()) {
			alert("비밀번호가 서로 다릅니다.");
			return;
		} else if ($("#name").val() == "") {
			alert("이름을 입력해주세요.");
			return;
		} else if ($("email").val() == "") {
			alert("이메일을 입력해주세요.");
			return;
		} else if ($("#tel").val() == "") {
			alert("전화번호를 입력해주세요.");
			return;
		} else if ($("#birthday").val() == "") {
			alert("생년월일을 입력해주세요.");
			return;
		} else if ($("#gender").val() == "") {
			alert("성별을 선택해주세요.");
			return;
		} else {
			alert("회원가입이 완료되었습니다.");
			$("#registForm").attr('action', '/user/userRegist.do');
			$("#registForm").submit();
		}
		 */
		 
		alert("회원가입이 완료되었습니다.");
		$("#registForm").attr('action', '/user/userRegist.do');
		$("#registForm").submit();
	});
	
	
	
	
});

