$(document).ready(function() {
    $('button[data-action=activate]').click(function(event) {
        activate(this);
        refreshToggler();
    });
   
   var refreshToggler = function() {
        $('.togglable .click_toggler').click(function () {
            $(this).closest('.togglable').toggleClass('open');
        });
   };
  
   var activate = function(button_element) {
       var element = $(button_element).parents('li');
       var service_id = element.attr('data-id');
       $.ajax({
           url : '/weddings/' + wedding_id + '/services/' + service_id + '/activate',
           type: 'PUT',
           data: {
               authenticity_token: $('meta[name="csrf-token"]').attr('content'),
               activate          : $(button_element).attr('data-value')
           },
           success: function(response) {
               element.slideUp(function() {
                   if ($(button_element).attr('data-value') === "true") {
                       $('ul.activated_services').prepend(element);
                       $(button_element).attr('data-value', "false");
                       $(button_element).text('Désactiver')
                   } else {
                       $('ul.disabled_services').prepend(element);
                       $(button_element).attr('data-value', "true");
                       $(button_element).text('Activer')
                   }
                   element.slideDown();

               });
           }
       });
   }
   refreshToggler();
   $('#left ul li').click(function() {
      $('#left ul li').removeClass('selected');   
      $(this).toggleClass('selected');
   });
});