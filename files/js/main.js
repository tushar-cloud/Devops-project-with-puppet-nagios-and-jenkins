(function ($) {
	$(document).ready(function () {
		// Main slider
		$('#main-slider.owl-carousel').owlCarousel({
			autoplayTimeout: 3000,
			loop: true,
			margin: 10,
			dots: false,
			nav: true,
			autoplay: true,
			navText: ['<i class="fas fa-chevron-left"></i>', '<i class="fas fa-chevron-right"></i>'],
			responsive:{
				0:{
					items:1
				},
				576:{
					items:1
				},
				992:{
					items:1
				}
			}
		});

		// User feedback Slider
		$('#feedback-slider.owl-carousel').owlCarousel({
			loop: true,
			items: 3,
			margin: 15,
			dots: false,
			nav: false,
			autoplay: false,
			responsive: {
				0: {
					items: 1,
					dots: true
				},
				576: {
					items: 2,
					dots: true
				},
				992: {
					items: 3,
					dots: true
				}
			}
		});
	});
})(jQuery);