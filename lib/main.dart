import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_app/Screens/Accueil/accueil_screen.dart';
import 'package:my_app/color.dart';
import 'package:my_app/services/auth.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Auth()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: accueilScreen(),
    );
  }
}
