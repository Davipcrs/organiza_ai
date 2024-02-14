# organiza_ai

A note taking, to do and appointments organizer app.

(Project paused...)  

## Project Structure

lib folder contains the code for the app, the plataforms folders are auto-generated by flutter.  
/lib/api/*- gRPC code for connect and send request to the server. Proto files and the gRPC auto-generated files are contained in this folder.  
/lib/controllers/* - Riverpod controllers for the application.  
/lib/model/*- Contains the class data models for the application data.  
/lib/views/widgets/* - Contains reusable widgets, this is used for creating responsiviness in the UI.  
/lib/views/- Contains the views, "Widgets" made by the resuable widgets in the /lib/views/widgets/*.  
