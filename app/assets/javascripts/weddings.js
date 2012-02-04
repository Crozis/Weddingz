$(document).ready(function() {
    $('.services li').click(function(){
        var service_type_id = $(this).attr('data-service-type-id');
        $.ajax({
           url      : '/weddings/' + wedding_id + '/services?service_type_id=' + service_type_id,
           type     : 'get',
           success  : function(result) {
               $('#content').html(result)
           }
        }); 
    })
});