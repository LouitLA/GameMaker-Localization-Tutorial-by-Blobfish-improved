# GameMaker Localization Tutorial by Blobfish improved

This GameMaker asset is from Blobfish youtube tutorial: https://www.youtube.com/watch?v=HYPYowI4PK0

I made some changes to incorporate the script into my project and I wanted to share it! You could download as a local package
or view the project files online.

#Changed the names & added comments for better readability

#Improved the argument substitution feature
  - instead of using a {a} text to replace one value you can now replace with mutiple values! Just use {argument number}.
    example "Increases health by {1} and shield by {2}" -> LocalizedText("generic_upgrade_description", 3, 5);
