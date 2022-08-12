import 'package:flutter/material.dart';
import 'package:latokio/view/dasboard_page.dart';
import 'package:latokio/view/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       visualDensity: VisualDensity.adaptivePlatformDensity,        
      ),
      initialRoute: DasboardPage.id,
        
      routes: {
        LoginPage.id :(context) => LoginPage(),
        DasboardPage.id :(context) => DasboardPage(),
      },
    );
  }
}
