<cfinclude template="#Application.root#main/header.cfm" runonce="true" />

<cfoutput>
	<div class="d-flex mx-auto text-center w-50 p-5">
		<form method="post" action="actlogin.cfm" id="loginForm" class="form-horizontal shadow-lg">
			<div class="row bg-body loginContent p-5">
				<div class="col-12">
					<p class="h1 text-primary" align="center">Infoane - Internals</p>
				</div>
				<div class="col-sm-12 pt-5">
					<input type="text" aria-describedby="usernameHelp" id="username" name="username" class="form-control userName w-100 py-3 required" placeholder="Email" value="" />
				</div>
				<div class="col-sm-12">
					<input type="password" aria-describedby="passwordHelp" id="password" name="password" class="form-control password w-100 py-3 required mt-4" placeholder="Password" value="" />
				</div>
				<div class="col-12">
					<div class="text-center">
						<input class="btn btn-primary loginBtn py-2 px-4 mt-3" type="submit" name="submit" value="Login" />
					</div>
					<p class="forgot pt-4" align="center">
						<a href="">Forgot Password?</a>
					</p>
				</div>
			</div>
		</form>
	</div>
</cfoutput>

<cfinclude template="#Application.root#main/footer.cfm" runonce="true" />