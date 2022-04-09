$('.modal').html("<%= escape_javascript(render('donors/donations/partials/new_modal')) %>"); //inserts content into your empty div, be aware that the parameter needed to be quoted.
$('.modal').dialog(); //jquery ui will open it as a modal popup
