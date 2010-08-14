<!--- get the available templates from the template folder --->
<cfset templates = getTemplates()>

<h1>Scaffold</h1>

<p>This plugin will enable Scaffolding in your application, to use it, follow the instructions below.</p>

<h2>Instructions</h2>

<ul>
	<li>Create the table in your database following Wheels's table name conventions.</li>
	<li>Insert the table name (in singular case) in the "Object name" input field.</li>
	<li>Select the type of Scaffold to perform.</li>
	<li>Click the "Generate" submit button.</li>
</ul>

<h2>Generate form</h2>

<cfif isDefined("URL.objectToScaffold") AND isDefined("URL.typeOfScaffold")>
    
    <cfoutput>
    	<p><tt>#generateScaffold(URL.objectToScaffold, URL.typeOfScaffold, URL.template)#</tt></p>
    </cfoutput>
    
    <p>Create another one?</p>
    
<cfelse>

	<p><tt>Example: If your table is named "users", insert "user" in the form field below.</tt></p>
    
</cfif>

<!--- Form --->
<cfform action="#CGI.script_name & '?' & CGI.query_string#">
	<p><label for="objectToScaffold">Object name</label> <br>
	<cfinput type="text" name="objectToScaffold"></p>
	
	<p><label for="typeOfScaffold">Type</label> <br>
	<cfselect name="typeOfScaffold">
		<option value="everything" selected="selected" >Model, Views and Controller</option>
		<option value="controller">Controller</option>
		<option value="model">Model</option>
	</cfselect>
	</p>
	
	<p>
	    <label for="template">Template</label> <br>
	    <cfselect name="template">
	        <cfoutput query="templates">
	            <cfif type is "DIR">
	                <option value="#name#" 
						<cfif name EQ "default">
							selected="selected"
						</cfif>
					>#name#</option>
	            </cfif>
	        </cfoutput>
    	</cfselect>
	</p>	
	
	<p><cfinput type="submit" name="btnSubmit" value="Generate"></p>
	
</cfform>

<a href="<cfoutput>#cgi.http_referer#</cfoutput>"><<< Go Back</a>