<cfset user = APPLICATION.Users.retrieveUserInfo( email = FORM.username, password = FORM.password ) />

<cfif user.recordCount>
	<cfset SESSION.userName 	= user.email />
	<cfset SESSION.role 		= user.role />
	<cfset SESSION.userFullName = user.firstName & ' ' & user.lastName />
	<cflocation url="#APPLICATION.root#main/dashboard.cfm" addtoken="false" />
<cfelse>
	<cflocation url="#APPLICATION.root#main/login.cfm" addtoken="false" />
</cfif>