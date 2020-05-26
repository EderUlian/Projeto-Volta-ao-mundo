import 'package:flutter/material.dart';
import '../../widgets/PontosTuristicos/pontosTuristicosDetails.dart';
import '../../models/pontoTuristicoModel.dart';

class PontoTuristicoListItem extends StatelessWidget {

  final PontoTuristicoModel _pontoTuristicoModel;
  PontoTuristicoListItem(this._pontoTuristicoModel);

  void onSelectPontoTuristico(BuildContext buildContext, PontoTuristicoModel pontoTuristicoModel) {
    Navigator
      .of(buildContext)
      .push(MaterialPageRoute(
        builder: (context) => PontoTuristicoDetails(pontoTuristicoModel),        
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () => onSelectPontoTuristico(context, _pontoTuristicoModel),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(_pontoTuristicoModel.nome),
      ),
        ),
    ));
  }
}
