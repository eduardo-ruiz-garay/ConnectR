import 'package:flutter/material.dart';
import 'package:flutter_application_test/theme/dark_mode.dart';
import 'package:flutter_application_test/theme/light_mode.dart';

import 'pages/login_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage(),
    theme: lightMode,
    darkTheme: darkMode,);
  }
}