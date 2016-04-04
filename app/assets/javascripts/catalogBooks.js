"use strict"

$(document).ready(function() {
		return;
	$(".narratorsBook").niceScroll({cursorcolor: 'rgb(123,133,152)', cursorborder: '0', cursorwidth: '10px', cursorborderradius: '0', cursoropacitymin: 'scrollabar'});
	//размер фото
	var imgDivPosterBook_img = $('.imgDivPosterBook').children('img');
	var photoHeight = imgDivPosterBook_img.height();
	if(photoHeight < 263) {
		imgDivPosterBook_img.addClass('stoProcentImg');
	}

	
	//пропорции текста
	var a_nameBook = $('a.nameBook');
	var nameBook = a_nameBook.text();
	var nameBookShort = nameBook.substr(0, 23);
	a_nameBook.text(nameBookShort);
	a_nameBook.append('...');

	var a_nameAuthor = $('a.nameAuthor');
	var nameAuthor = a_nameAuthor.text();
	if(nameAuthor.length > 25) {
		var nameAuthorShort = nameAuthor.substr(0, 25);
		a_nameAuthor.text(nameAuthorShort);
		a_nameAuthor.append('...');
	}
	
	//пропорции текста при наведении на блок с книгой, главная страница
	$('.bookBlok').hover(
		function() {
			nameBook = a_nameBook.text();
			var nameBookShort = nameBook.substr(0, 15);

			a_nameBook.text(nameBookShort);
			a_nameBook.append('...');
		},
		function() {
			a_nameBook.text(nameBook);
		}
	);
	
	$('.bookBlok').hover(
		function() {
			nameAuthor = a_nameAuthor.text();
			var nameAuthorShort = nameAuthor.substr(0, 18);

			a_nameAuthor.text(nameAuthorShort);
			a_nameAuthor.append('...');
		},
		function() {
			a_nameAuthor.text(nameAuthor);
		}
	);
	
	$('.buttonReadCh')
		.mouseover(function() {
			if(!$('.narratorsBook').hasClass('textFonBlock')) {
				$('.textFon').removeClass('textFonBlock');
				$('.textFonRead').addClass('textFonBlock');
			}
		}).mouseout(function() {
			if(!$('.narratorsBook').hasClass('textFonBlock')) {
				$('.textFonRead').removeClass('textFonBlock');
				$('.textFon').addClass('textFonBlock');
			}
		});
	$('.buttonReadS')
		.mouseover(function() {
			if(!$('.narratorsBook').hasClass('textFonBlock')) {
				$('.textFon').removeClass('textFonBlock');
				$('.textReader').addClass('textFonBlock');
			}
		}).mouseout(function() {
			if(!$('.narratorsBook').hasClass('textFonBlock')) {
				$('.textReader').removeClass('textFonBlock');
				$('.textFon').addClass('textFonBlock');
			}
		});
	$('.nameAuthor')
		.mouseover(function() {
			if(!$('.narratorsBook').hasClass('textFonBlock')) {
				$('.textFon').removeClass('textFonBlock');
				$('.textFonAuthor').addClass('textFonBlock');
			}
		}).mouseout(function() {
			if(!$('.narratorsBook').hasClass('textFonBlock')) {
				$('.textFonAuthor').removeClass('textFonBlock');
				$('.textFon').addClass('textFonBlock');
			}
		});
	$('.blokAdd')
		.mouseover(function() {
			if(!$('.narratorsBook').hasClass('textFonBlock')) {
				$('.textFon').removeClass('textFonBlock');
				$('.textFonAdd').addClass('textFonBlock');
			}
		}).mouseout(function() {
			if(!$('.narratorsBook').hasClass('textFonBlock')) {
				$('.textFonAdd').removeClass('textFonBlock');
				$('.textFon').addClass('textFonBlock');
			}
		});
		
	//при наведении на иконку пользователя, находящейся в главном меню, в полке
	$('.userPanelInfo')
		.mouseover(function() {
			if(!$('.narratorsBook').hasClass('textFonBlock')) {
				$('.textShelfFon').removeClass('textFonBlock');
				$('.textShelfUser').addClass('textFonBlock');
			}
		}).mouseout(function() {
			if(!$('.narratorsBook').hasClass('textFonBlock')) {
				$('.textShelfUser').removeClass('textFonBlock');
				$('.textShelfFon').addClass('textFonBlock');
			}
		});
	
	
	// при нажатии выводится панель с списком аудиокниг
	$('.buttonReadS').click(function() {
		$('.textFon').removeClass('textFonBlock');
		$('.narratorsBook').addClass('textFonBlock');
	});
	
	//при наведении на табы с разной книжной продукцией
	//$('.menu1>a').click(function() {
	//		$('.menu1>a').removeClass('activeMenu1');
	//		$('.menu1>a').addClass('activeMenu1');
	//	}			
	//});
	

	// scroll's buttons
	(function(){
    $(".leftScrollButton").click(function(){
      setCssTransformByButton(this, 0);
    });
    $(".rightScrollButton").click(function(){
      setCssTransformByButton(this, -215);
    });

    function setCssTransformByButton(button, px){
      $(button)
        .siblings(".element")
        .children(".panelScrollBookRight")
        .css({transform: "translateX(" + px + "px)"});
    }
	})();
});