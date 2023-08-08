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
    primarySwatch: Colors.grey, //istege baglı değişim
    backgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Color(0xff2F2F2F), // AppBar arka plan rengi
      titleTextStyle: TextStyle(
        color: Colors.white,
      ),),
    brightness:  Brightness.dark,
    //buttonTheme: Theme.of(context).buttonTheme.copyWith(colorScheme: ColorScheme.dark()),
    textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.white),

    //backgroundColor: Colors.grey.shade700, cont içi

    primaryTextTheme: TextTheme(bodyText1:TextStyle(color: Colors.white),),
    textTheme: TextTheme( bodyText1:TextStyle(color: Colors.black)),
   // textButtonTheme: TextButtonThemeData(style:ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.white), ))
  );


  static final lightTheme= ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade500,//
    colorScheme: ColorScheme.light(),
    backgroundColor: Colors.white , //app
    primaryColor: Colors.grey.shade400,
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.blue),
      titleTextStyle: TextStyle(
        color: Colors.black,
      ),),
    textTheme: TextTheme( bodyText1:TextStyle(color: Colors.white),),
    primaryTextTheme: TextTheme(bodyText1:TextStyle(color: Colors.black),
    )

  );
}