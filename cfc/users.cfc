<cfcomponent>
	<cffunction name="GetUserInfo" returnType="query" access="public">
		<cfargument name="UserID" required="false" />
		<cfargument name="Email" required="false" />
		<cfargument name="PassWord" required="false" />
		<cfquery name="GetUserInfo">
			SELECT * FROM Users
			WHERE 1 = 1
			<cfif StructKeyExists(ARGUMENTS, "UserID")>
				AND UserID = <cfqueryparam value="#ARGUMENTS.UserID#" cfsqltype="cf_sql_integer" />
			</cfif>
			<cfif StructKeyExists(ARGUMENTS, "Email")>
				AND Email = <cfqueryparam value="#ARGUMENTS.Email#" cfsqltype="cf_sql_integer" />
			</cfif>
			<cfif StructKeyExists(ARGUMENTS, "PassWord")>
				AND PassWord = <cfqueryparam value="#ARGUMENTS.PassWord#" cfsqltype="cf_sql_integer" />
			</cfif>
		</cfquery>
		<cfreturn GetUserInfo />
	</cffunction>
</cfcomponent>