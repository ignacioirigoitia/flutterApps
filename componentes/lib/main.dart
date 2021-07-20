import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/pages/alert_page.dart';
 
import 'package:componentes/src/routes/routes.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'), // English, no country code
        Locale('es', 'ES'), // Spanish, no country code
      ],
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( settings ) {
        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage()
        );
      },
    );
  }
}