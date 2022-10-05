import 'package:flutter/material.dart';
import 'package:flutter_application_todo/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  String email = '';
  String pswd = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/logoFlutter.png'),
                ),
                /* child: Image.network(
                      'https://w7.pngwing.com/pngs/67/315/png-transparent-flutter-hd-logo-thumbnail.png'),
                ), */
                Container(height: 20),
                Card(
                  child: Padding(
                    /* padding: const EdgeInsets.all(8.0), */
                    padding: const EdgeInsets.only(bottom: 20, top: 50),
                    child: Column(children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                          /* print(text); */
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email', border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          pswd = text;
                          /* print(text); */
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              if (email == 'cairo@email' &&
                                  pswd == 'teste123') {
                                /* Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage())); 
                              //mantem a tela anterior disponível com btn de voltar
                              */
                                /* Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => HomePage())); */
                                //exclui a tela anterior
                                /*  Navigator.of(context).pushNamed('/home'); */
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                                print('logado');
                              } else {
                                print('login errado');
                              }
                            },
                            child: Text('Entrar')),
                      )
                    ]),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        /* Container(color: Colors.amber), */

        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/mario.png',
              fit: BoxFit.contain,
            )),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        _body(),
      ],
    ));
  }
}
