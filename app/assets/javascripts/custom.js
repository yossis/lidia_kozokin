
jQuery(document).ready(function($){
	
	/* ------------------- Fancybox --------------------- */

	(function() {

		$('[rel=image]').fancybox({
			type        : 'image',
			openEffect  : 'fade',
			closeEffect	: 'fade',
			nextEffect  : 'fade',
			prevEffect  : 'fade',
			helpers     : {
				title   : {
					type : 'inside'
				}
			}
		});

		$('[rel=image-gallery]').fancybox({
			nextEffect  : 'fade',
			prevEffect  : 'fade',
			helpers     : {
				title   : {
					type : 'inside'
				},
				buttons  : {},
				media    : {}
			}
		});


	})();


	
	/* ------------------ Back To Top & Scroll ------------------ */

	// jQuery('#footer-menu-back-to-top a').click(function(){
	// 	jQuery('html, body').animate({scrollTop:0}, 300); 
	// 	return false; 
	// });

	$(window).scroll(function(){
	    if ($(window).scrollTop() > 200) {
	        $('#back-to-top').fadeIn();
	    } else {
	        $('#back-to-top').fadeOut();
	    }
	}); 

	$('#back-to-top').click(function(){
	    $("html, body").animate({ scrollTop: 0 }, 600);
	    return false;
	});

	$('.navbar ul.pull-right a').on('click',function(e){
      e.preventDefault();
      
      var anchor = $(this);

      //animate content scroll
      // $('html, body').stop().animate({
      //   scrollTop: $(anchor.attr('href')).offset().top
      // }, 900,'easeInOutExpo');

      $('html, body').stop().animate({
        scrollTop: $(anchor.attr('href')).offset().top
      }, 1000);
  }); 

});


/* ------------------ Tooltips ----------------- */

jQuery(document).ready(function() {

    $('.tooltips').tooltip({
      selector: "a[rel=tooltip]"
    })

});


/* ------------------ Image Overlay ----------------- */

jQuery(document).ready(function($) {
	
	$('.picture a').hover(function () {
		$(this).find('.image-overlay-zoom, .image-overlay-link').stop().fadeTo('fast', 1);
	},function () {
		$(this).find('.image-overlay-zoom, .image-overlay-link').stop().fadeTo('fast', 0);
	});
	
});

/* -------------------- Isotope --------------------- */


$(window).load(function() {

var $container = $('#thumbs');
  $container.imagesLoaded( function(){
    $container.isotope({
      resizable: false,
      itemSelector : '.design'
    });
  });

  $(window).smartresize(function(){
    $container.isotope({
      itemWidth: $('.design').width()
    });
  });

  $('#options a').click(function(){
    var selector = $(this).attr('data-filter');
    $container.isotope({ filter: selector });
   
    $(this).parent().parent().find('.selected').removeClass('selected');
    $(this).addClass('selected');
    return false;
  });

});

