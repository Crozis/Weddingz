$(document).ready(function() {
    var refreshButton = function() {
      $('button[data-action=activate]').click(function(event) {
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

    $('.services li').click(function(){
        var service_type_id = $(this).attr('data-service-type-id');
        var activated_template = Handlebars.compile($("#service_template").html());
        var disabled_template = Handlebars.compile($("#service_template_disable").html());
        $.ajax({
           url      : '/weddings/' + wedding_id + '/services.json?service_type_id=' + service_type_id,
           type     : 'get',
           success  : function(result) {
              _.each(result.activated_services, function(service){
                service.pictures_url = service.pictures_url.split(";");
              });
              _.each(result.disabled_services, function(service){
                service.pictures_url = service.pictures_url.split(";");
              });
              
              $('#content .activated_services').empty();
              $('#content .disabled_services').empty();
              _.each(result.activated_services, function(service){
                $('#content .activated_services').append(activated_template(service));
              });
              _.each(result.disabled_services, function(service){
                $('#content .disabled_services').append(disabled_template(service));
              });
              
              $('.togglable .click_toggler').click(function () {
                $(this).closest('.togglable').toggleClass('open');
              });
              refreshButton();
           }
        }); 
    })
    refreshToggler();
});