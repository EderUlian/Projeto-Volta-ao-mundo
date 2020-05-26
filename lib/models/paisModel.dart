import 'pontoTuristicoModel.dart';

class PaisModel {
  final String nome;
  final String descricao;
  final String bandeira;
  final String foto;
  final List<PontoTuristicoModel> pontoTurisco;
  PaisModel({this.nome, this.descricao, this.bandeira, this.foto, this.pontoTurisco});
}