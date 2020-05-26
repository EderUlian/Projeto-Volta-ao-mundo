import 'package:flutter/material.dart';
import '../../models/pontoTuristicoModel.dart';

class PontoTuristicoDetails extends StatelessWidget {
  final PontoTuristicoModel _pontoTuristicoModel;
  PontoTuristicoDetails(this._pontoTuristicoModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pontoTuristicoModel.nome)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/pontosTuristicos/' + _pontoTuristicoModel.foto + '.jpg'),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              repeat: ImageRepeat.noRepeat,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(_pontoTuristicoModel.descricao),
            )
          ],
        ),
      ),  
    );
  }
}
