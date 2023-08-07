import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode =ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn){
    themeMode= isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class Themes{
  static final darkTheme= ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    primaryColor: Color(0xff2F2F2F),//app
    primarySwatch: Colors.blueGrey, //istege baglı değişim
    indicatorColor: Color(0xff0E1D36) ,
    backgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: Color(0xff2F2F2F), // AppBar arka plan rengi
        titleTextStyle: TextStyle(
          color: Colors.black,
        ),),


    brightness:  Brightness.dark,
    //buttonTheme: Theme.of(context).buttonTheme.copyWith(colorScheme: ColorScheme.dark()),
   textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.white),
  );


  static final lightTheme= ThemeData(
    scaffoldBackgroundColor: Color(0xffEDEDED),
    colorScheme: ColorScheme.light(),

  );
}