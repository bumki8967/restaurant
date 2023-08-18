var regexEmail 	= /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
var regexPw 	= /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/; 

$(document).ready(function() {
	
	// 회원가입 버튼 클릭 시
	$("#registBtn").click(function() {
		if ($("#userId").val() == "") {
			alert("아이디를 입력해주세요.");
			$("#userId").focus();
			return;
		} else if ($("#selectEmail option:selected").val() == "") {
			if (!$("#userId").val().match(regexEmail)) {
				alert("이메일 형식에 맞지 않습니다.");
				return;
			}
		} else if ($("#userPw").val() == "") {
			alert("비밀번호를 입력해주세요.");
			$("#userPw").focus();
			return;
		} else if (!$("#userPw").val().match(regexPw)) {
			alert("비밀번호 형식을 확인해주세요.\n 최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자");
			$("#userPw").focus();
			return;
		} else if ($("#userPwRe").val() == "") {
			alert("비밀번호를 다시 한번 입력해주세요.");
			$("#userPwRe").focus();
			return;
		} else if (!$("#userPwRe").val().match(regexPw)) {
			alert("비밀번호 형식을 확인해주세요.\n 최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자");
			$("#userPwRe").focus();
			return;
		} else if ($("#name").val() == "") {
			alert("이름을 입력해주세요.");
			$("#name").focus();
			return;
		} else if ($("#tel_1").val() == "" && $("#tel_2").val() == "" && $("#tel_3").val() == "") {
			alert("연락처를 입력해주세요");
			return;
		} else if (!$('input:radio[name=gender]').is(':checked')) {
			alert("성별을 선택해주세요.");
			return;
		} else if ($("#birthday").val() == "") {
			alert("생년월일을 선택해주세요.");
			$("#birthday").focus();
			return;
		} else if($("#userIdChk").val() == "N") {
			alert("중복아이디를 확인 해주세요.");
			return;
		} else {
			let con = confirm("회원가입을 진행하시겠습니까?");
			
			if (con) {
				alert("회원가입이 완료되었습니다.");
				$("#registForm").attr('action', '/user/userRegist.do');
				$("#registForm").submit();
			} else {
				return false;
			}
		}
	});
	
	
	// 비밀번호 & 비밀번호 확인 실시간 확인
	$(function() {
        $("#alert-success").hide();
        $("#alert-danger").hide();

        $("input").keyup(function() {
            var pwd = $("#userPw").val();
            var pwdRe = $("#userPwRe").val();

            if (pwd != "" || pwdRe != "") {
                if (pwd == pwdRe) {
                    $("#alert-success").show();
                    $("#alert-danger").hide();
                    $("#submit").removeAttr("disabled");
                } else{
                    $("#alert-success").hide();
                    $("#alert-danger").show();
                    $("#submit").attr("disabled", "disabled");
                }   
            }
        })
    });
});


// 뒤로가기 버튼을 눌렀을 때
function back() {
    var con = confirm("회원가입을 중단하시겠습니까?");

    if (con) {
        history.back(-1);
    } else {
		return false;
	}
}


// 중복 아이디 확인 
function duplicationUserId() {
	var Id = $("#userId").val();
	var selEmail = $("#selectEmail option:selected").val();
	var user_id = Id + selEmail.replaceAll(",", "");
	
	if ($("#userId").val() == "") {
		alert("아이디를 입력해주세요.");
		$("#userId").focus();
		return;
	} else if (Id != "" && !user_id.match(regexEmail)) {
		alert("이메일 형식에 맞지 않습니다.");
		return;
	} else {
		$.ajax({
			type 	: "POST",
			url		: "/user/duplicationUserId",
			dataType: "JSON",
			data	: {
				userId : user_id
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
