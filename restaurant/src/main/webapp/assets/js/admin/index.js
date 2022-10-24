
$(document).ready(function() {
	});
	// 회원탈퇴
	function userDelete(user_seq) {
		if (confirm("해당 사용자를 삭제하시겠습니까?")) {
			//alert("SEQ :: " + user_seq);
			alert("해당 회원이 탈퇴되었습니다.");
			$(".form").attr('action', '/admin/userDelete.do?user_seq=' + user_seq);
			$(".form").submit();
		} else {
			alert("취소되었습니다.");
			return;
		}
	}




