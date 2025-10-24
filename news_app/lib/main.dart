// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:news_app/Home_Screen.dart';
import 'package:news_app/Splash_Screen.dart';
import 'package:news_app/categoryNewsScreen.dart';
import 'package:news_app/detailsScreen.dart';

void main() {
  runApp(MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        appBarTheme: AppBarTheme(backgroundColor: Colors.blueGrey),
        useMaterial3: true,
      ),

      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
