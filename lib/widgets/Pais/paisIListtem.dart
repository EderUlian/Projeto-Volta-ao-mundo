import 'package:flutter/material.dart';
import 'package:volta_ao_mundo_2/widgets/Pais/paisDetails.dart';
import '../../models/paisModel.dart';

class PaisListItem extends StatelessWidget {
  final PaisModel pais;
  PaisListItem(this.pais);

  void onSelectPais(BuildContext buildContext, PaisModel paisModel) {
    Navigator
      .of(buildContext)
      .push(MaterialPageRoute(
        builder: (context) => PaisDetails(paisModel),        
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        margin: null,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () => onSelectPais(context, pais),
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/flags/' + pais.bandeira,
                    alignment: Alignment.center,
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(pais.nome),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
