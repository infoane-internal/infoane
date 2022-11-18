﻿<cfoutput>
	<!DOCTYPE html>
	<html lang="en">
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Infoane - Internals</title>
			<link rel="shortcut icon" href="#Application.root#assets/images/logo/favicon.ico">
			<link href="#Application.root#assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
			<link href="#Application.root#assets/css/infoane-custom.css" rel="stylesheet">
			<script src="#Application.root#assets/vendor/jQuery/js/jquery-3.5.1.min.js"></script>
			<script src="#Application.root#assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
			<script src="#Application.root#assets/js/infoane-custom.js"></script>
		</head>

		<body>
			<nav class="navbar navbar-expand-md navbar-light bg-white sticky-top">
				<div class="container-md">
					<a class="navbar-brand" href="/">
						<img alt="Infoane" src="#Application.root#assets/images/logo/png-logo.png">
					</a>
				</div>
			</nav>
		</body>
	</html>
</cfoutput>
<script>
	$(document).ready(function() {
		$(".alert").fadeTo(2000, 500).slideUp(500, function(){
			$("#success-alert").slideUp(500);
		});
	});
</script>