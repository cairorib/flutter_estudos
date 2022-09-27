import 'package:flutter/material.dart';

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
      body: Center(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
