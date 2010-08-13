<cfcomponent extends="Controller" output="false"><cfscript>
  
  function init(){
  }
  
  // [NamePluralLowercaseDeHumanized]/index
  function index(){
    [NamePluralLowercase] = model("[NameSingularUppercase]").findAll();
  }
  
  // [NamePluralLowercaseDeHumanized]/show/key
  function show(){
    [NameSingularLowercase] = model("[NameSingularUppercase]").findByKey(params.key);
    	
    if (!IsObject([NameSingularLowercase])){
      flashInsert(message="[NameSingularUppercase] #params.key# was not found");
      redirectTo(action="index");
    }
  }
  
  // [NamePluralLowercaseDeHumanized]/new
  function new(){
    [NameSingularLowercase] = model("[NameSingularUppercase]").new();
  }
  
  //[NamePluralLowercaseDeHumanized]/edit/key
  function edit(){
    [NameSingularLowercase] = model("[NameSingularUppercase]").findByKey(params.key);
    	
    if (!IsObject([NameSingularLowercase])){
	    flashInsert(message="[NameSingularUppercase] #params.key# was not found");
			redirectTo(action="index");
	  }
  }
  
  // [NamePluralLowercaseDeHumanized]/create
  function create(){
    [NameSingularLowercase] = model("[NameSingularUppercase]").new(params.[NameSingularLowercase]);
		
		if ([NameSingularLowercase].save()){
			flashInsert(message="The [NameSingularLowercase] was created successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(message="There was an error creating the [NameSingularLowercase].");
		  renderPage(action="new");
		}
  }
  
  // [NamePluralLowercaseDeHumanized]/update
  function update(){
    [NameSingularLowercase] = model("[NameSingularUppercase]").findByKey(params.key);
		
		if ([NameSingularLowercase].update(params.[NameSingularLowercase])){
		  flashInsert(message="The [NameSingularLowercase] was updated successfully.");
      redirectTo(action="index");
		} else {
		  flashInsert(message="There was an error updating the [NameSingularLowercase].");
			renderPage(action="edit");
		}
  }
  
  // [NamePluralLowercaseDeHumanized]/delete/key
  function delete(){
    [NameSingularLowercase] = model("[NameSingularUppercase]").findByKey(params.key);

		if ([NameSingularLowercase].delete()){
			flashInsert(message="The [NameSingularLowercase] was deleted successfully.");
      redirectTo(action="index");
    } else {
      flashInsert(message="There was an error deleting the [NameSingularLowercase].");
			redirectTo(action="index");
    }
  }
  
</cfscript></cfcomponent>