<h1>Editing [NameSingularLowercase]</h1>
<cfif flashKeyExists("message")>
	<cfoutput><p>#flash("message")#</p></cfoutput>
</cfif>
<cfoutput>
EDITFORM

#linkTo(text="Return to the listing", action="index")#
</cfoutput>