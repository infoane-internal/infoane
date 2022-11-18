<cfcomponent>
	<cffunction name="retrieveUserInfo" returnType="query" access="public">
		<cfargument name="userID" 	required="false" />
		<cfargument name="email" 	required="true" />
		<cfargument name="password" required="true" />
		
		<cfquery name="getUserInfo">
			SELECT * FROM Users
			WHERE 1 = 1
			AND Email = <cfqueryparam value="#ARGUMENTS.email#" cfsqltype="cf_sql_varchar" />
			AND PassWord = <cfqueryparam value="#ARGUMENTS.password#" cfsqltype="cf_sql_varchar" />
			<cfif structKeyExists(ARGUMENTS, "UserID")>
				AND UserID = <cfqueryparam value="#ARGUMENTS.userID#" cfsqltype="cf_sql_integer" />
			</cfif>
		</cfquery>

		<cfreturn getUserInfo />
	</cffunction>
</cfcomponent>