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
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: ClipOval(
                  child: Image.network(
                      'https://img.freepik.com/vetores-gratis/fundo-gradiente-da-paisagem-do-por-do-sol-da-praia_23-2148979774.jpg?h=200;w=200'),
                ),
              ),
              /* child: Image.network(
                    'https://img.freepik.com/vetores-gratis/fundo-gradiente-da-paisagem-do-por-do-sol-da-praia_23-2148979774.jpg?h=200;w=200'),
              ), */
              accountName: Text('GLÓRIA AO SENHOR DEUS!!!'),
              accountEmail: Text('cairo@email.com')),
          ListTile(
            leading: Icon(Icons.home),
            onTap: () {
              print('ALELUIA!!!');
            },
            title: Text('Inicio'),
            subtitle: Text('Tela de Início'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_sharp),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            title: Text('Inicio'),
            subtitle: Text('Tela de Início'),
          )
        ]),
      ),
      appBar: AppBar(
        title: Text('ALELUIA!!!'),
        actions: [
          CustomSwitcher(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
/*           mainAxisAlignment: MainAxisAlignment.center, */
          /* crossAxisAlignment: CrossAxisAlignment.stretch, */
          children: [
            Text('contator:$counter'),
            Container(height: 50, width: 50, color: Colors.red),
            CustomSwitcher(),
            Container(height: 50, width: 50, color: Colors.red),
            CustomSwitcher(),
            Container(height: 50, width: 50, color: Colors.red),
            CustomSwitcher(),
            Container(height: 50, width: 50, color: Colors.red),
            CustomSwitcher(),
            Container(height: 50, width: 50, color: Colors.red),
            CustomSwitcher(),
            Container(height: 50, width: 50, color: Colors.red),
            CustomSwitcher(),
            Container(height: 50, width: 50, color: Colors.red),
            CustomSwitcher(),
            Container(height: 50, width: 50, color: Colors.red),
            CustomSwitcher(),
            Container(height: 50, width: 50, color: Colors.red),
            CustomSwitcher(),
            Container(height: 50, width: 50, color: Colors.red),
            CustomSwitcher(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orangeAccent,
                ),
              ],
            )
          ],
        ),
      ),

      /* Center(
        child: CustomSwitcher(),
      ), */
      /*  height: 200,
          width: 200,
          color: Colors.black,
          child: Center(
              child: Container(height: 100, width: 100, color: Colors.green)), */

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

class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
        /* setState(() {
                isDartTheme = value;
              }); */
      },
    );
  }
}
