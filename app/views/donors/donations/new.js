$("#modal-window").find(".modal-content").html("<%= j (render 'donors/donations/partials/new_modal') %>");
$("#modal-window").modal();