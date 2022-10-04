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

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      labelText: 'Password', border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      if (email == 'cairo@email' && pswd == 'teste123') {
                        /* Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage())); 
                            //mantem a tela anterior disponível com btn de voltar
                            */
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomePage()));
                        //exclui a tela anterior
                        print('logado');
                      } else {
                        print('login errado');
                      }
                    },
                    child: Text('Entrar'))
              ],
            ),
          )),
    ));
  }
}
