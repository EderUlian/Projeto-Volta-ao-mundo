import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/sobre.jpg'),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            repeat: ImageRepeat.noRepeat,
          ),
          Center(
            child: Text('Eder', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('Este é um aplicativo com o objetivo de fornecer informações sobre os principais pontos turísticos do mundo'),
          )
        ],
      ),
    );
  }
}