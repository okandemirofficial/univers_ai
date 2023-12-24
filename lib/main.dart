import 'package:flutter/material.dart';
import 'package:univers_ai/screens/home_screen.dart';
import 'package:univers_ai/screens/login_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(elevation: 0,centerTitle: true)
      ),
      home: const HomeScreen(),
    );
  }
}
