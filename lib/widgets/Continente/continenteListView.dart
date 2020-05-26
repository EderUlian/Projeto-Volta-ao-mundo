import 'package:flutter/material.dart';
import '../../models/continenteModel.dart';
import '../Pais/paisIListtem.dart';

class Continente extends StatelessWidget {

  final ContinenteModel _continenteModel;
  Continente(this._continenteModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              _continenteModel.nome,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,)
            ),
          ),
          ..._continenteModel.paises.map((e) {
            return PaisListItem(e);
          }).toList()
        ],
      ),
    );
  }
}