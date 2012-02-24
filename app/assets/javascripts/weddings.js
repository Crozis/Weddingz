$(document).ready(function() {
    var refreshButton = function() {
      $('button[data-action=activate], button[data-action=disabled]').click(function(event) {
          activate(this);
          refreshToggler();
      });
    }      
   var refreshToggler = function() {
        $('.togglable .click_toggler').click(function () {
            $(this).closest('.togglable').toggleClass('open');
        });
   };
  
   var activate = function(button_element) {
       var element = $(button_element).parents('li');
       var service_id = element.attr('data-id');
       if ($(button_element).attr('data-value') === "false") {
         var url = '/weddings/' + wedding_id + '/services/' + service_id + '/disable';
       } else {
         var url = '/weddings/' + wedding_id + '/services/' + service_id + '/activate';
       }
       
       $.ajax({
           url : url,
           type: 'GET',
           data: {
               authenticity_token: $('meta[name="csrf-token"]').attr('content'),
           },
           success: function(response) {
               element.slideUp(function() {
                   if ($(button_element).attr('data-value') === "true") {
                       $('ul.activated_services .no_data').remove();
                       $('ul.activated_services').prepend(element);
                       $(button_element).attr('data-value', "false");
                       $(button_element).text('Mettre de côté');
                       if ($('ul.activated_services li').length === 0) {
                          $('#content .activated_services').append("<li class=\"no_data\">Aucun service pré-séléctionné</li>");  
                       }
                       if ($('ul.disabled_services li').length === 0) {
                          $('#content .disabled_services').append("<li class=\"no_data\">Aucun service mis de côté</li>");  
                       }
                   } else {
                       $('ul.disabled_services .no_data').remove(); 
                       $('ul.disabled_services').prepend(element);
                       $(button_element).attr('data-value', "true");
                       $(button_element).text('Activer');
                       if ($('ul.disabled_services li').length === 0) {
                          $('#content .disabled_services').append("<li class=\"no_data\">Aucun service mis de côté</li>");  
                       }
                       if ($('ul.activated_services li').length === 0) {
                          $('#content .activated_services').append("<li class=\"no_data\">Aucun service pré-séléctionné</li>");  
                       }
                   }
                   element.slideDown();
               });
              refreshToggler();
           }
       });
   }
   refreshToggler();
   
   $('#left ul li').click(function() {
      $('#left ul li').removeClass('selected');   
      $(this).toggleClass('selected');
   });

    $('.services li').click(function(){
        var service_type_id = $(this).attr('data-service-type-id');
        var activated_template = Handlebars.compile($("#service_template").html());
        var disabled_template = Handlebars.compile($("#service_template_disable").html());
        $.ajax({
           url      : '/weddings/' + wedding_id + '/services.json?service_type_id=' + service_type_id,
           type     : 'get',
           success  : function(result) {
              $('#content .activated_services').empty();
              $('#content .disabled_services').empty();
              if(result.activated_services.length === 0) {
                $('#content .activated_services').append("<li class=\"no_data\">Aucun service pré-séléctionné</li>");              
              }
              _.each(result.activated_services, function(service){
                $('#content .activated_services').append(activated_template(service));
              });
              if(result.disabled_services.length === 0) {
                $('#content .disabled_services').append("<li class=\"no_data\">Aucun service mis de de côté</li>");              
              }
              _.each(result.disabled_services, function(service){
                $('#content .disabled_services').append(disabled_template(service));
              });
              refreshButton();
              refreshToggler();
              refreshSlideshow();
           }
        }); 
        refreshToggler();
    });
    
    
  $('#service_service_type').change( function() {
        
        var service_type_id = $('#service_service_type').val();
        var activated_template = Handlebars.compile($("#service_template").html());
        var disabled_template = Handlebars.compile($("#service_template_disable").html());
        $.ajax({
           url      : '/weddings/' + wedding_id + '/services.json?service_type_id=' + service_type_id,
           type     : 'get',
           success  : function(result) {
              $('#content .activated_services').empty();
              $('#content .disabled_services').empty();
              if(result.activated_services.length === 0) {
                $('#content .activated_services').append("<li class=\"no_data\">Aucun service pré-séléctionné</li>");              
              }
              _.each(result.activated_services, function(service){
                $('#content .activated_services').append(activated_template(service));
              });
              if(result.disabled_services.length === 0) {
                $('#content .disabled_services').append("<li class=\"no_data\">Aucun service mis de de côté</li>");              
              }
              _.each(result.disabled_services, function(service){
                $('#content .disabled_services').append(disabled_template(service));
              });
              refreshButton();
              refreshToggler();
              refreshSlideshow();
           }
        });
  });


    refreshToggler();
    refreshButton();
    if($("#mobile").length != 1) {
      var sidePanel = $("#left ul");
      var sidebarTop = sidePanel.offset().top;
      var first = true;
      $(document).scroll(function(evt) {
          if (first) {
              sidebarTop = sidePanel.offset().top;
              first = false;
          }
          var wTop = $(window).scrollTop();
          if (wTop > sidebarTop) {
              sidePanel.css({
                  position: "fixed",
                  top: "0px"
              });
          } else {
              sidePanel.css({
                  position: "static"
              });
          }
      });
    }    
    var mwith = $("#mobile").length != 1 ? 510 : 340 ; 
    var refreshSlideshow = function() {
         $('.slidesContainer').css('overflow', 'hidden');
            
              $('.slideshow').each(function() {
                  var slideshow = this;
                	//Configuration
            		  var retour = true;
            		  var tempsTransition = 1000;
            	  	var tempsAttente = 6000;
            			
            		  var currentPosition = 0;
            		  var slideWidth = mwith;
            		  var slides = $(slideshow).find('.slide');
            		  var numberOfSlides = slides.length;
            		  var interval;
                  
                  // Supprime la scrollbar en JS
                
                  // Attribue  #slideInner  à toutes les div .slide
                  slides.wrapAll('<div class="slideInner"></div>')
                    // Float left to display horizontally, readjust .slides width
                	.css({
                      'float' : 'left',
                      'width' : slideWidth
                    });
                
                  // Longueur de #slideInner égale au total de la longueur de tous les slides
                  $(slideshow).find('.slideInner').css('width', slideWidth * numberOfSlides);
                
                  // Insert controls in the DOM
                  $(slideshow).prepend('<span class="control leftControl">Précédent</span>')
                               .append('<span class="control rightControl">Suivant</span>');
                
                
                  
                  // Hide left arrow control on first load
                  manageControls(currentPosition);
                
                  //Crée un écouteur d'évènement de type clic sur les classes .control
                  $(slideshow).find('.control').bind('click', function(){
                    // Determine la nouvelle position
                  	currentPosition = ($(this).hasClass('rightControl') ? currentPosition + 1 : currentPosition - 1);
                      
                  	if(currentPosition == numberOfSlides && retour == false ){
                  		currentPosition--;
                  		pause();
                  	}  	
                  	// Cache ou montre les controles
                    manageControls(currentPosition);
                    // Fais bouger le slide
                    $(slideshow).find('.slideInner').animate({
                      'marginLeft' : slideWidth*(-currentPosition)
                    },tempsTransition);
                  });
                
                  // manageControls: Cache ou montre les flêches de controle en fonction de la position courante
                  function manageControls(position){
                    // Cache la fleche "précédent" si on est sur le premier slide
                  	if(position==0){ $(slideshow).find('.leftControl').hide() } else{ $(slideshow).find('.leftControl').show() }
                  	// Cache la fleche "suivant" si on est sur le dernier slide (et que le retour automatique n'est pas activé)
                    if(position==numberOfSlides-1 && retour == false){
                	   	$(slideshow).find('.rightControl').hide();
                  	} else {
                  		$(slideshow).find('.rightControl').show();
                  	}
                    if(position == numberOfSlides && retour == true){
                      currentPosition = 0;
                	 	  $(slideshow).find('.leftControl').hide();
                	  }
                  }
                  function suivant(){
                  	$(slideshow).find('.rightControl').click();
                	}
              });
    }
});