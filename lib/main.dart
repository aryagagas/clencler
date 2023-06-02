import 'package:flutter/material.dart';
import 'package:clencler/auth/splashscreen.dart';
import 'package:clencler/theme.dart';
import 'package:clencler/auth/onboardscreen.dart';
import 'package:clencler/auth/splashscreen.dart';
import 'package:clencler/screen/dashboard.dart';
import 'package:clencler/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClenCler',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      home: SplashScreen(),
    );
  }
}

