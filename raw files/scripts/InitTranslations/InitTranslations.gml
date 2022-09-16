
enum LANGUAGE {
	ENG	= 1, FR //Starting the enum counter with the value 1
}

//This func transforms the CSV file into a grid and makes a ds_map
//to read each text height position with the key string
function InitTranslations(){
	global.translationsGrid = load_csv("locale.csv");
	var gridHeight = ds_grid_height(global.translationsGrid);
	
	global.translationsKeyMap = ds_map_create();
	
	for(var i = 1; i < gridHeight; i++) 
		ds_map_add(global.translationsKeyMap, global.translationsGrid[# 0, i], i); //adding the height position of each key into a map
}

/*
  Searchs a piece of text in the current language by providing one key. 
  It can optionally contain format specifiers that are replaced by the 
  values specified in subsequent additional arguments and formatted as 
  requested -> {argument number}
*/
function LocalizedText(_key) {
	
	var keyPosition = global.translationsKeyMap[? _key];
	
	if(keyPosition == undefined){
		return _key;
	}
	
	var text = global.translationsGrid[# global.gameLanguage, keyPosition];
	
	if(argument_count > 1) {
		for(var i = 1; i <= argument_count; i++){
			text = string_replace_all(text, "{"+ string(argument[i]) +"}", argument[i]);
		}
	}
	
	return text;
	
}