
$(document).ready(function () {

        /************************************
         *              Menu Mobile         *
         ************************************/

        $('#show-mobile-menu').change(function(){
                if( $(this).is(':checked') ) {
                    $('.navigation-mobile').addClass('open-menu-mobile');
                    $('.burger-menu').css({'background-color':'#fcb714'});
                }
                else {
                    $('.navigation-mobile').removeClass('open-menu-mobile');
                    $('.burger-menu').css({'background-color':'#541617'});
                }
        });


		/************************************
		 *				Sliders				*
		 ************************************/
		// Home Page Sliders
        var owl_brands = $("#brands-slider");
        var owl_selection = $("#selectionSlider");
        var owl_accords = $('#agreementsSlider');
        var owl_main = $('#mainSlider');
		
		// Agreement Slider       
     	var owl_recipe  = $("#recipe-slider");

        owl_recipe.owlCarousel({
            slideSpeed : 1000,
            paginationSpeed : 1000,
            singleItem:true
        });
        owl_recipe.trigger('owl.play',3500);

        owl_brands.owlCarousel({
            slideSpeed: 900,
            paginationSpeed: 900,
            items: 4
        });
        owl_selection.owlCarousel({
            slideSpeed: 900,
            paginationSpeed: 900,
            items: 4
        });
        owl_accords.owlCarousel({
            slideSpeed: 900,
            paginationSpeed: 900,
            singleItem: true
        });
        owl_main.owlCarousel({
            slideSpeed: 1000,
            paginationSpeed: 1000,
            singleItem: true
        });


        $(".brandsSlider .owl-next").click(function () {
            owl_brands.trigger('owl.next');
        });
        $(".brandsSlider .owl-prev").click(function () {
            owl_brands.trigger('owl.prev');
        });
        $(".selectionSlider .owl-next").click(function () {
            owl_selection.trigger('owl.next');
        });
        $(".selectionSlider .owl-prev").click(function () {
            owl_selection.trigger('owl.prev');
        });

        // autpplay
        owl_selection.trigger('owl.play', 4000);
        owl_brands.trigger('owl.play', 3000);
        owl_accords.trigger('owl.play', 3000);
        owl_main.trigger('owl.play', 5000);


        /************************************
		 *				Select				*
		 ************************************/
        //Custom Select Input
        $('select.customSelect').selectric();
        $('select.nsForm-customSelect').selectric();

        /************************************
         *          Contact us form         *
         ************************************/
        
        // var msgContainer = $('.nsForm-message');
        // msgContainer.hide();


        // $('.nsForm-required').on('change', function(){
        //     if( $(this).value == '' ){
        //         $(this).addClass('nsform-input--error');
        //     }
        //     else {
        //         $(this).removeClass('nsform-input--error');
        //     }
        // });

        // $('form.js-nsForm').on('submit', function(e) {
        //     var valid = true;
        //     var inputs= $('.nsForm-required');
        //     var msg = "";

        //     var selectInput = $("select[name='subject']");
        //     if( selectInput.value == 'title')
        //     {
        //         msg += "- le champ sujet est obligatoire<br/>";
        //         valid = false;
                
        //     }
        //     else {
        //         $('.selectric-nsForm-customSelect .selectric').removeClass('nsform-input--error');
        //     }

        //     inputs.each(function() {

        //         field = $(this);
        //         if(field.val() == ''||field.val() == null) {
        //             field.addClass('nsform-input--error');
        //             valid = false;

        //             if(field.attr('name') == 'surname') msg += "- le champ prenom est obligatoire<br/>";
        //             if(field.attr('name') == 'name') msg += "- le champ nom est obligatoire<br/>";
        //             if(field.attr('name') == 'email') msg += "- le champ email est obligatoire<br/>";
        //             if(field.attr('name') == 'signup_city') msg += "- le champ ville est obligatoire<br/>";
        //             if(field.attr('name') == 'subject'){
        //                 msg += "- le champ sujet est obligatoire<br/>";
        //                 $('.selectric-nsForm-customSelect .selectric').addClass('nsform-input--error');
        //             }
        //             if(field.attr('name') == 'message') msg += "- le champ email est obligatoire<br/>";
        //         }
        //         else
        //         {
        //             field.removeClass('nsform-input--error');
        //         }
        //     });



        //     if(!valid) {
        //         // msgContainer.html("<p>"+ msg +"</p>");
        //         // msgContainer.show();
        //         e.preventDefault();
        //         return false;
        //     }n

        // });


        /************************************
		 *	   FindUs- tabNavigation		*
		 ************************************/
         $('.tabsNav-button').click(function() {

                var tabsContent = $('.tabsContent');
                var tabsButtons = $('.tabsNav-button');
                var tabTarget = $(this).data('target');

                tabsContent.each(function(){
                    $(this).css("display","none");
                });
                tabsButtons.each(function(){
                    $(this).removeClass('tabsNav-button-active');
                });

                $(this).addClass('tabsNav-button-active');
                $(tabTarget).css("display","block");
            });


            $('#affinerRechercheBouton').click(function() {
                    $(".FiltreAfficherMobile").slideToggle("8000");
                    $("html, body").animate({ scrollTop: $('.FiltreAfficherMobile').offset().top }, 1000);   
                    //$(".FiltreAfficherMobile").css("display","block");
            });




});