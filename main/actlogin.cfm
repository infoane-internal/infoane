<cfset user = APPLICATION.Users.GetUserInfo(Email=FORM.username, PassWord=FORM.password) />

<cfif user.recordCount>
	<cfset SESSION.UserName = user.email />
	<cfset SESSION.Role = user.role />
	<cfset SESSION.UserFullName = user.firstName & ' ' & user.lastName />
	<cflocation url="#APPLICATION.root#main/dashboard.cfm" addtoken="false" />
<cfelse>
	<cflocation url="#APPLICATION.root#main/login.cfm" addtoken="false" />
</cfif>