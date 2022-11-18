<cfinclude template="#Application.root#main/header.cfm" runonce="true" />

<cfoutput>
	<div class="text-center mx-auto mt-2 alert alert-primary alert-sm pl-5">
		<h2>Welcome #SESSION.userFullName# !</h2>
	</div>
</cfoutput>

<cfinclude template="#Application.root#main/footer.cfm" runonce="true" />