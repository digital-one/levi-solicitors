var isTouchDevice = {
    Android: function() {
        return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function() {
        return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function() {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function() {
        return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function() {
        return navigator.userAgent.match(/IEMobile/i);
    },
    any: function() {
        return (isTouchDevice.Android() || isTouchDevice.BlackBerry() || isTouchDevice.iOS() || isTouchDevice.Opera() || isTouchDevice.Windows());
    }
};



$(function(){

var _handleShown = true,
	_fullpageActive = false,
	_isTablet,
	_isMobile,
	_isDesktop,
	_container,
	_scrollDirection,
	_currentPathName;

$('select').selectBox();

//Mobile menu

$('.menu-toggle').on('click',function(e){
  e.preventDefault();
  var _menu = $('#nav');
  if(_menu.hasClass('active')){
    $(this).removeClass('active');
    _menu.removeClass('active').slideUp(100);
  } else {
      $(this).addClass('active');
      _menu.addClass('active').slideDown(100);
  }
})

//
if($('#commentform').length){
    $('#commentform').gform_validation();
}


//Affiliates carousel

	$('#affiliates-carousel').slick({
  		dots: false,
  		arrows: true,
  		infinite: true,
  		speed: 300,
  		slidesToShow: 4,
  		slidesToScroll: 1,
  		responsive: [
    	{
      		breakpoint: 1024,
      		settings: {
        	slidesToShow: 4,
        	slidesToScroll: 1,
        	infinite: true,
        	dots: false
      	}
    },
    	
    	{
      	breakpoint: 480,
      	settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    	}
 	 ]
	});


	$('#services-carousel').slick({
  		dots: false,
  		arrows: true,
  		infinite: true,
  		speed: 300,
  		slidesToShow: 3,
  		slidesToScroll: 1,
  		responsive: [
    	{
      		breakpoint: 1024,
      		settings: {
        	slidesToShow: 2,
        	slidesToScroll: 1,
        	infinite: true,
        	dots: false
      	}
    },
    	
    	{
      	breakpoint: 480,
      	settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    	}
 	 ]
	});

//Homepage slider

if($('#slider').length){


$('#slider').on('init', function(event, slick){
	var _total = $('.slick-slide',$(this)).length;
	$('#slider').prepend('<div class="page-count"><span class="page">1</span> of <span class="total">'+_total+'</span></div>');

});

$('#slider').on('beforeChange', function(event, slick, currentSlide, nextSlide){
		$('.page-count .page',$(this)).text(nextSlide+1);
	})
/*
$('#slider').on('afterChange', function(event, slick, currentSlide){
	$('.page-count .page',$(this)).text(currentSlide+1);
	
});
*/

$('#slider').slick({
    dots: false,
    autoplay: true,
    fade: true,
    autoplaySpeed: 4000,
    speed: 600,
    pauseOnHover: true,
    arrows: true
  });


}

init_map = function(){

if($('#map').length){
	$('#map').html('');
		var _lat = Map.lat,
			_lng = Map.lng,
			_marker = Map.marker;
$('#map').gmap({
        markers: [{'latitude': _lat,'longitude': _lng}],
        markerFile: _marker,
        markerWidth:53,
        markerHeight:80,
        markerAnchorX:27,
        markerAnchorY:80
    });
}
}


if($('#twitter-slider').length){ 


initTwitterFeedSlick = function(){
	$('#twitter-slider').slick({
     dots: false,
  	 infinite: true,
  	// fade: true,
  	 autoplay: true,
     autoplaySpeed: 4000,
  	slidesToShow: 1,
  	adaptiveHeight: true
  });
}



	handleTweets = function(_tweets){
		var x = _tweets.length,
			n = 0,
			element = document.getElementById('twitter-slider');
var html = '';
while(n < x) {
html += '<div class="slide">' + _tweets[n] + '</div>';
n++;
}
//html += '</ul>';
element.innerHTML = html;
	initTwitterFeedSlick();
}


var mi_feed = {
	"id": '591629816882929664',
    "domId": '',
	"maxTweets": 3,
	"enableLinks": true,
	"showUser": false,
	"showTime": false,
	"dateFunction": '',
	"showRetweet": false,
	"customCallback": handleTweets,
	"showInteraction": false
    };
 twitterFetcher.fetch(mi_feed);
}


activate_dropdown_menus = function(){
// Menu dropdown
if($(window).width()> 1200){
  $('#nav').css({
    display:'block'
  })
if(!isTouchDevice.any()){

$('li.menu-item-has-children').on('mouseenter',function(){
  $(this).addClass('rollover');
  $('.sub-menu',$(this)).fadeIn(200);
})
$('li.menu-item-has-children').on('mouseleave',function(){
   $(this).removeClass('rollover');
  $('.sub-menu',$(this)).hide();
})

}

if(isTouchDevice.any()){

$('li.menu-item-has-children').on('click',function(e){
  e.preventDefault();
  if($(this).hasClass('rollover')){
     $(this).removeClass('rollover');
      $('.sub-menu',$(this)).hide();
  } else {
   $(this).addClass('rollover');
  $('.sub-menu',$(this)).show();
}
})

}
} else {
   $('#nav').css({
    display:'none'
  })
    $('li.menu-item-has-children').off('mouseenter').off('mouseleave');

}
}

load_posts = function(){
if($('.posts').length){
var _windowMiddle = $(window).height()/2,
	_windowHeight = $(window).height(),
	_offset = $('.posts').offset(),
	_postsHeight = $('.posts').height(),
	_scrollTop = $(window).scrollTop(),
	_postsBottom = _offset.top + _postsHeight,
	_scrollAmount  = _postsBottom - _windowMiddle,
	_footerHeight = $('.posts-footer').outerHeight(),
	_waypoint = (_postsHeight - _windowHeight) + 600;
if(_scrollTop > _waypoint && _scrollDirection=='down'){
	$('a.load-posts').trigger('click');
}
}
}

load_posts_click = function(e){

	e.preventDefault();
	var _this = e.currentTarget,
		_url = $(_this).attr('href'),
		_loadElement =  '.posts',
		_btnElement = 'a.load-posts'

		if(!$(_btnElement).hasClass('end')){
	$(_this).data("label",$(_this).text());
	$(window).off('scroll',load_posts); //stop the scroll action
	$('a.load-posts').off('click', load_posts_click); //stop the click action
	$(_this).addClass('loading');

	$.get(_url).done(function(data){
	$('a.load-posts').on('click', load_posts_click);	
	$(window).on('scroll',load_posts);
	$('a.load-posts').removeClass('loading');
	var _obj = $(data).find(_loadElement),
	 	_btn = $(data).find(_btnElement);
	 	_items = _obj.children();
	$(_this).attr('href',_btn.attr('href')); //update the paging link
  console.log(_btn.attr('href'))
	$(_this).attr('class',_btn.attr('class'));
	$(_loadElement).append(_items);
	//_container.append(_items).masonry('appended',_items);
	});
	}
}

$('a.load-posts').on('click',load_posts_click);
$(window).on('scroll',load_posts);


$('.anchor-up').on('click',function(e){

	e.preventDefault();
	var _animationSpeed = 500,
		_target = $(this).attr('href');
		_target = '0';
	 $.scrollTo( _target, _animationSpeed, {
          easing: 'easeInOutExpo',
          offset: 0
        });
})
  
 
 $(window).on('resize',function(){
 	init_map();
  activate_dropdown_menus();
 })      



$(window).on( 'DOMMouseScroll mousewheel', function ( event ) {
  if( event.originalEvent.detail > 0 || event.originalEvent.wheelDelta < 0 ) { 
    //scroll down
    _scrollDirection = 'down';
  } else {
    //scroll up
   	_scrollDirection = 'up';
  }
});

activate_dropdown_menus();
init_map();

});