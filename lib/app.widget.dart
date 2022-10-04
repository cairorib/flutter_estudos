import 'package:flutter/material.dart';
import 'package:flutter_application_todo/login_page.dart';
import 'login_page.dart';
import 'app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;
  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light /* brightness: Brightness.light */),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
          /*    home: LoginPage(), */
        );
      },
    );
    /* return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red, brightness: Brightness.light),
      home: HomePage(),
    ); */
  }
}
