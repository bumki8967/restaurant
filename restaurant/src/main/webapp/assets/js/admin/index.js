
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


// 체크박스 전체선택
  $(function() {
		$("#allCheck").click(function() {
			if ($("#allCheck").prop("checked")) {
				$("input[name='chk']").prop("checked", true);
			} else {
				$("input[name='chk']").prop("checked", false);
			}
		});
	});

	
// 선택한 회원만 탈퇴
function selectUserDelete() {
	var chk = $("input[type=checkbox]:checked");
	var selectChkCnt = chk.length;
	
	
	if (selectChkCnt == 0) {
		alert("탈퇴시킬 회원을 선택해주세요.");
		return;
	}
	
	if (confirm("선택한 회원을 탈퇴시키겠습니까?")) {
		const chkArr = new Array(selectChkCnt);
		
		$("input[type=checkbox]:checked").each(function(v, i) {
			chkArr[i] = v.value;
		});
		
		$("#form").attr('action', '/admin/userDelete.do');
		$("#form").submit();
	}
}
	
/**	
function selectUserDelete() {

	var chk = $("input[class='deleteArtclSeqs']:checked");
	var chkArr = [];
	
	//console.log("check	::	" + chk.length);	
	
	if (chk.length == 0) {
		alert("탈퇴시킬 회원을 선택해주세요.");
		return;
	}
	
	chk.each(function(k ,v) {
		//console.log($(this).val());
		chkArr.push("push	:	" = $(this).val());
	});
	console.log("list	:	" + chkArr);
	//console.log(chkArr.join(','));
}	
  		var chkArr = [];
	  
		$("input:checkbox[class='deleteUserSeqs']:checked").each(function() {
			chkArr.push($(".deleteUserSeqs").val());
			console.log("push	:	" + chkArr);
			console.log("list	:	" + chkArr.join(','));
		})
		/**
		if (chkArr.length == 0) {
			alert("탈퇴시킬 회원을 선택해주세요.");
			return;
		} else {
			var con = confirm("선택한 회원을 탈퇴시키겠습니까?");
			
			if (con) {
				alert("삭제");
				return;
				$("#form").attr('action', '/admin/userDelete.do');
				$("#form").submit();
			}
		}
		 
}
  */