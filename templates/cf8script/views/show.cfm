<h1>Showing [NameSingularLowercase]</h1>
<cfif flashKeyExists("message")>
	<cfoutput><p>#flash("message")#</p></cfoutput>
</cfif>
<cfoutput>
LISTINGCOLUMNS

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this [NameSingularLowercase]", action="edit", key=[NameSingularLowercase].[PrimaryKey])#
</cfoutput>