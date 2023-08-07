import 'package:flutter/material.dart';
import 'package:oneloc_case_study/pages/gizlilik.dart';
import 'package:oneloc_case_study/pages/sartlar.dart';
import 'package:oneloc_case_study/pages/statepage.dart';
import 'package:oneloc_case_study/pages/login.dart';
import 'package:oneloc_case_study/pages/register.dart';
import 'package:oneloc_case_study/pages/screen1.dart';
import 'package:oneloc_case_study/pages/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oneloc_case_study/riverpod/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      // ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ],
    child: MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          darkTheme: ThemeData(brightness: Brightness.dark),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: Brightness.light,
            useMaterial3: true,
            textTheme: GoogleFonts.robotoTextTheme(),
          ),

          initialRoute: '/',
          routes: {
            '/': (context) => SplashScreen(),
            '/screen': (context) => Screen1(),
            '/login': (context) => LogIn(),
            '/register': (context) => Register(),
            '/homepage': (context) => HomePage(),
            '/gizlilik': (context) => Gizlilik(),
            '/sartlar': (context) => Sartlar(),
          },
        );
  }
}
