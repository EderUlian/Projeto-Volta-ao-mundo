import 'package:flutter/material.dart';
import '../../widgets/PontosTuristicos/pontosTuristicosListItem.dart';
import '../../models/paisModel.dart';

class PaisDetails extends StatelessWidget {
  final PaisModel _paisModel;
  PaisDetails(this._paisModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_paisModel.nome)),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_paisModel.descricao),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text('PONTO TURÍSTICOS',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
              Flexible(
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      PontoTuristicoListItem(_paisModel.pontoTurisco[index]),
                  itemCount: _paisModel.pontoTurisco.length,
                ),
              ),
            ]),
      ),
    );
  }
}
