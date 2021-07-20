import 'package:disenos/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'package:disenos/screens/scroll_design.dart';
import 'package:disenos/screens/basic_design.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home-screen',
      theme: ThemeData.dark(),
      routes: {
        'basic-design' : ( _ ) => BasicDesignScreen(),
        'scroll-design': ( _ ) => ScrollScreen(),
        'home-screen': ( _ ) => HomeScreen()
      },
    );
  }
}
