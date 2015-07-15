$(document).ready(function() {
  $(".deleteAction").click(function(){
    var current_comment = $(this).parent('div');
    if(confirm("Delete comment?")){
      $.ajax({
        url: '/posts/' + $(current_comment).attr('data-post_id') + '/comments/' + $(current_comment).attr('data-coment_id'),
        type: 'POST',
        data: { _method: 'DELETE'},
        success: function() {
          $(current_comment).fadeOut(200);
        }
      });
    };
  });
});