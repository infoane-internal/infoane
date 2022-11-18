<cfcomponent output="false">
	<cfset this.name 			= "InfoaneInternal" />
	<cfset this.datasource 			= "InfoaneInternal" />
	<cfset this.applicationTimeout 	= createTimeSpan(1,0,0,0) />
	<cfset this.clientManagement 	= true />
	<cfset this.sessionManagement 	= true />
	<cfset this.sessionTimeout 		= createTimeSpan(1,0,0,0) />

	<cffunction name="onApplicationStart" returnType="boolean" output="false">
		<cfset APPLICATION.root = "/" />
		<cfset APPLICATION.Users =  CreateObject("component", "cfc.users")>
		
		<cfreturn true />
	</cffunction>

	<cffunction name="onError" returnType="void">
		<cfargument name="exception" required="true">
		<cfargument name="eventname" type="string" required="true">
		<cfdump var="#ARGUMENTS#" label="arguments - onError()" />
		<cfdump var="#FORM#" label="form" />
		<cfdump var="#URL#" label="url" />
		<cfdump var="#CGI#" label="cgi" />
		<cfdump var="#SESSION#" label="session" />
	</cffunction>
</cfcomponent>