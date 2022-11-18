$(document).ready(function() {
	if($('#WelcomeAlert').length) {
		$("#WelcomeAlert").fadeTo(2000, 2000).slideUp(1000, function() {
			$("#success-alert").slideUp(1000);
		});
	}
});
