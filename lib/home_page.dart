import 'package:flutter/material.dart';
import 'package:flutter_application_todo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    /* return Container(child: Center(child: Text('ALELUIA ALELUIA'))); */
    return Scaffold(
        appBar: AppBar(
          title: Text('ALELUIA!!!'),
        ),
        body: Container(
          child: Switch(
            value: AppController.instance.isDartTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
              /* setState(() {
                isDartTheme = value;
              }); */
            },
          ),
          /*  height: 200,
          width: 200,
          color: Colors.black,
          child: Center(
              child: Container(height: 100, width: 100, color: Colors.green)), */
        )
        /* Center(
        child: GestureDetector(
          child: Text(
            'clicados: $counter',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            setState(() {
              counter++;
            });
          },
        ),
      ), */
        /*  floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ), */
        );
  }
}
