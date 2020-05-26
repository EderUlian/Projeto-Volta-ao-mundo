import 'package:flutter/material.dart';
import 'package:volta_ao_mundo_2/models/continenteModel.dart';
import 'package:volta_ao_mundo_2/models/paisModel.dart';
import 'package:volta_ao_mundo_2/models/pontoTuristicoModel.dart';
import 'package:volta_ao_mundo_2/widgets/Continente/continenteListView.dart';
import 'package:volta_ao_mundo_2/widgets/Telas/Sobre.dart';

class MyHomePage extends StatelessWidget {
  final List<ContinenteModel> dados = [
    ContinenteModel(nome: 'América', foto: null, paises: [
      PaisModel(
          nome: 'Brasil',
          descricao:
              'O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba.',
          bandeira: 'brazil.png',
          foto: 'null',
          pontoTurisco: [
            PontoTuristicoModel(
                nome: 'Cristo Redentor',
                descricao:
                    'Estátua de Jesus Cristo de 38 m de altura no topo da montanha, com paisagens da cidade e acessível por trem.',
                foto: 'cristo'),
            PontoTuristicoModel(
              nome: 'Cataratas do Iguaçu',
              descricao: 'Grandes cachoeiras pitorescas cercadas por trilhas, com vida selvagem e um trem que passa pela selva.',
              foto: 'cataratas' )
          ]),
      PaisModel(
          nome: 'Estados Unidos da América',
          descricao:
              'Os EUA são um país com 50 estados que cobrem uma vasta faixa da América do Norte, com o Alasca ao noroeste e o Havaí no Oceano Pacífico, estendendo a presença do país. As principais cidades da costa atlântica são Nova York, um centro financeiro e cultural global, e a capital, Washington, DC. Chicago, uma metrópole do centro-oeste, é conhecida por sua importante arquitetura, enquanto Los Angeles, na costa oeste, é famosa pelas produções cinematográficas de Hollywood.',
          bandeira: 'united-states-of-america.png',
          foto: 'null',
          pontoTurisco: [
            PontoTuristicoModel(
                nome: 'Estatua da Liberdade',
                descricao:
                    'Célebre monumento nacional inaugurado em 1886, com visitas guiadas, museu e vistas da cidade.',
                foto: 'liberdade')
          ])
    ]),
    ContinenteModel(nome: 'Ásia', foto: null, paises: [
      PaisModel(
        nome: 'Japão',
        descricao:
            'O Japão, país insular no Oceano Pacífico, tem cidades densas, palácios imperiais, parques nacionais montanhosos e milhares de santuários e templos. Os trens-bala Shinkansen conectam as principais ilhas: Kyushu (com as praias subtropicais de Okinawa), Honshu (onde ficam Tóquio e a sede do memorial da bomba atômica de Hiroshima) e Hokkaido (famosa como destino para a prática de esqui). Tóquio, a capital, é conhecida por seus arranha-céus e lojas e pela cultura pop.',
        bandeira: 'japan.png',
        foto: 'null',
        pontoTurisco: [
          PontoTuristicoModel(
            nome: 'Torre de Tóquio',
            descricao:
                'Parecido com a Torre Eiffel, este ponto de referência conta com áreas para observar a vista e outras atrações.',
            foto: 'torretokyo',
          ),
        ],
      ),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Volta ao Mundo'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.info), onPressed: () => {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Sobre())
              )
            })
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Continente(dados[index]),
          itemCount: dados.length,
        ));
  }
}
