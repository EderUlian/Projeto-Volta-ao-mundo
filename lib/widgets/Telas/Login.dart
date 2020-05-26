import 'package:flutter/material.dart';
import 'package:volta_ao_mundo_2/widgets/Telas/MyHomePage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var usuarioController = TextEditingController();
  var senhaController = TextEditingController();
  var notFound = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(147, 216, 231, 1),
      appBar: AppBar(
        title: Text('Entre'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage('assets/logo.jpg'),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            repeat: ImageRepeat.noRepeat,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    TextField(
                      controller: usuarioController,
                      decoration: InputDecoration(
                        hintText: 'Usuário',
                        hintStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                    TextField(
                      controller: senhaController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        hintStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                    notFound ? 
                    Center(
                      child: Padding(padding: EdgeInsets.only(top: 10), child: Text('Usuário não encontrado', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),)
                    )
                    : Text('')
                  ],
                ),
              )
            )
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blue,
                child: Text('Entrar', style: TextStyle(color: Colors.white),),
                onPressed: () {
                    setState(() {
                      notFound = false;
                    });
                  if (usuarioController.text == 'admin' && senhaController.text == 'admin') {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MyHomePage()
                      )
                    );
                  } else {
                    setState(() {
                      notFound = true;
                    });
                  }
                },
              )
            )
          )
        ],
      )
    );
  }
}