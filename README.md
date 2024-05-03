# clean-flutter-base-project
This repo is Based on Flutter clean-code clean-Architecture principles, Contains only the necessary folders, Librarys, Files and extensions to help kick start any flutter app.


# Contents 
* Dio and Dio factory to handle APIS and their endpoints
* Singleton File - to ensure that the app has one single instance of something for example (token - userEntity - prefrences ...etc)
* contains Service_locator File that ascts as a dependency injection agent - to help instanciate an instance of something for example a signleton - a Module - a remote Data Source or a Use-Case
* State Renderer to render loading/ error/ Success states dialogs and pop ups
* This Contains an error handler to handle diffrent Status responses 
* Contains Rescource manager folder to help with diffren project recourses like routes - colors - sizes - paddings - assets - fonts - texxt Styles
* Some Basic widgets like TextFileds and TextFields with Title - CustomButtons - Custom GridView - Custom AppBar - Custom Shimmering Loader
* App_Prefs file that has saveDataToSaredPrefs and GetDataFromSharedPrefs deleteDataToSharedPref and clear methods (to handle all shared prefs data)
* constants file - contains all predefined constnts files like Api Urls and BaseUrls and others..
* Some basic string - ints - double extensions
* a validator file that validates inputs like phone number - emails - password - confir passwords fields 
