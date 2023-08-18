// 회원탈퇴
function userDelete(userSeq) {
	if (confirm("해당 사용자를 삭제하시겠습니까?")) {
		//alert("SEQ :: " + userSeq);
		alert("해당 회원이 탈퇴되었습니다.");
		$(".form").attr('action', '/admin/userDelete.do?userSeq=' + userSeq);
		$(".form").submit();
	} else {
		alert("취소되었습니다.");
		return;
	}
}


// 체크박스 전체선택
  $(function() {
		$("input[name='allCheck']").click(function() {
			if ($("input[name='allCheck']").prop("checked")) {
				$("input[name='rowCheck']").prop("checked", true);
			} else {
				$("input[name='rowCheck']").prop("checked", false);
			}
		});
	});

	
// 선택한 회원 탈퇴
function selectUserDelete() {
		var valueArr = new Array();
		var list = $("input[name='rowCheck']");
		
		for (var i = 0; i < list.length; i++) {
			// 선택된 체크박스가 있으면 배열에 값 저장
			if (list[i].checked) {
				valueArr.push(list[i].value);
			}
		}
		if (valueArr.length == 0) {
			alert("탈퇴시킬 회원을 선택해주세요.");
			return;
		} else {
			if (confirm("선택한 회원을 탈퇴시키겠습니까?")) {
				$.ajax ({
					type	:	"POST",
					url		:	"/admin/selectUserDelete.do",
					traditional : true,		// 배열로 보낼때 사용
					data	:	{
						valueArr: valueArr
					},
					success : function(data) {
						if (data = 1) {
							alert("회원탈퇴가 완료되었습니다.");
							location.reload();
						} else {
							alert("회원탈퇴를 실패하였습니다.");
							return;
						}
					},
					error : function(error, xhr) {
						alert("error!!\n" + error + "	" + xhr);
						return;
					}
				})	
			}
		}
	}
	
function excelDown() {
	var seqArr  = new Array();
	var list 	= $("input[name='rowCheck']");
	var url 	=  "/admin/excelDown.do";
	
	for (i = 0; i < list.length; i++) {
		if (list[i].checked) {
			seqArr.push(list[i].value);
		}
	}
	
	if (seqArr.length ==0) {
		alert("다운로드 할 게시글을 선택해주세요.");
		return false;
	} else { 
		$("form[name='viewForm']").attr("action", url);
		console.log("1111	::	" + seqArr);
//		return false;
		document.viewForm.submit();
	}
}
