<cfset user = APPLICATION.Users.retrieveUserInfo( email = FORM.username, password = FORM.password ) />

<cfif user.recordCount>
	<cfset SESSION.userName 	= user.email />
	<cfset SESSION.role 		= user.role />
	<cfset SESSION.userFullName = user.firstName & ' ' & user.lastName />
	<cflocation url="/main/dashboard.cfm" addtoken="false" />
<cfelse>
	<cflocation url="/main/login.cfm" addtoken="false" />
</cfif>