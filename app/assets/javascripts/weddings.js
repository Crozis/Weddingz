$(document).ready(function() {
    $('.services li').click(function(){
        var service_type = $(this).attr('data-service-type');
        $.ajax({
           url      : '/weddings/' + wedding_id + '/services?service_type=' + service_type,
           type     : 'get',
           success  : function(result) {
               $('#content').html(result)
           }
        }); 
    })
});