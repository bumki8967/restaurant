$(document).ready(function(){






    // 햄버거버튼
    $('.menu_btn').click(function(){
        if ($('.menu').hasClass('on')) {
            $('.menu').removeClass('on');
        }else{
            $('.menu').addClass('on');
        }
    });
    

    // $('.snb_toggle').click(function(){
    //     if ($('.depth2').hasClass('on')) {
    //         $('.depth2').removeClass('on');
    //         $(this).children('.depth2').addClass('on');
    //         $(this).children('.depth2').addClass('on');
    //         $('.snb_toggle').removeClass('on');
    //         $(this).addClass('on');
    //     }else{
    //         $('.depth2').addClass('on');
    //     }
    //     // $('.depth2').slideUp();
    //     // $(this).children('.depth2').slideToggle();
    // });
    

    // 아코디언
    // $('.accordion').click(function(){
    //     if($(this).hasClass('on') == false){
    //         $('.accordion').removeClass('on');
    //         $('.toggle').slideUp();
    //         $(this).addClass('on');
    //         $(this).nextAll('ul').slideDown();
    //         $(this).nextAll('ul').css('display' , 'inline-block');
    //     }else{
    //         $(this).removeClass('on');
    //         $(this).nextAll('ul').slideUp();
    //     }
    //     return false;
    // })
    

	// 푸터 사이트맵 바로가기
	$("select.map").change(function(){
		var vv = $("select option:selected").val();
		if(vv != ""){
		window.open("about:blank").location.href = vv;
		}
	})

    // 탑버튼
    $('#etc').hide();
    $(window).scroll(function() {

        if ($(this).scrollTop() > 2000) {
            $('#etc').fadeIn();
        } else {
            $('#etc').fadeOut();
        }
    });
    $("#top_btn").click(function() {
        $('html, body').animate({
            scrollTop : 0
        }, 400);
        return false;
    });

    // 모달창 켜기1
    $('.modal_step_open').click(function(){
        var modal_step = $(this).attr('modal_step');

        $('.modal_step').addClass('hidden'); // 이전 모달창을 숨김
        
        $(this).addClass('current');
        $("."+ "modal_step" +modal_step).removeClass('hidden');
    })

    // 모달창 켜기2
    $('.modal_open').on("click", function() {
        $(this).next().removeClass("hidden");
    });

    // 모달창 끄기
    $('.cancerButton').on("click", function() {
        if ($(this).closest(".modal")) {
            $(this).closest(".modal").addClass("hidden");
        }
        else {
            $(this).closest(".modal").addClass("hidden");
        }
    });

    // 모든 모달창 끄기
    $('.allModalClose').on("click", function() {
        $('.modal').addClass("hidden");
    });

    // 첫번째 모달창 끄기
    $('.firstModalClose2').on("click", function() {
        $(this).closest('.modal').addClass("hidden");
        $(this).closest('.modal').next('.modal').removeClass("hidden");
    });   

    // footer 슬라이드
    var swiper = new Swiper(".footer_slide", {
        loop : true, // 슬라이드 반복 여부
        slidesPerView: 4,
        autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
            delay : 3000,   // 시간 설정
            disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
        },
		navigation: {
			nextEl: ".swiper-button-next3",
			prevEl: ".swiper-button-prev3",
		},		
        breakpoints : { // 반응형 설정이 가능 width값으로 조정
            420 : {
                slidesPerView : 1,
                centeredSlides : true, // true시에 슬라이드가 가운데로 배치
            },            
            550 : {
                slidesPerView : 1,
                centeredSlides : true, // true시에 슬라이드가 가운데로 배치
            },
            1024 : {
                slidesPerView : 2,
                centeredSlides : false, // true시에 슬라이드가 가운데로 배치
            }, 
            1340 : {
                slidesPerView : 3,
                centeredSlides : true, // true시에 슬라이드가 가운데로 배치
            },                        
        }, 		
    });		
    // 포토게시판 슬라이드
    var swiper = new Swiper(".photo_slide", {
        loop : true, // 슬라이드 반복 여부
        slidesPerView: 3,
        centeredSlides : true,
        spaceBetween : 36, 
        autoplay : {  // 자동 슬라이드 설정 , 비 활성화 시 false
            delay : 3000,   // 시간 설정
            disableOnInteraction : false,  // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
        },
		navigation: {
			nextEl: ".swiper-button-next4",
			prevEl: ".swiper-button-prev4",
		},		
        breakpoints : { // 반응형 설정이 가능 width값으로 조정
            420 : {
                slidesPerView : 1,
                centeredSlides : true, // true시에 슬라이드가 가운데로 배치
            },            
            768 : {
                slidesPerView : 1,
                centeredSlides : true, // true시에 슬라이드가 가운데로 배치
            },
            920 : {
                slidesPerView : 2,
                centeredSlides : false, // true시에 슬라이드가 가운데로 배치
            }, 
            1340 : {
                slidesPerView : 3,
                centeredSlides : false, // true시에 슬라이드가 가운데로 배치
                spaceBetween : 0, 
            },                        
        }, 		
    });		
        
});

$(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
    



})



