$(document).ready(function() {
	if($('#WelcomeAlert').length){
		$("#WelcomeAlert").fadeTo(2000, 500).slideUp(500, function(){
			$("#success-alert").slideUp(500);
		});
	}
});
