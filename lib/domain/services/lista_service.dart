import 'package:examen1/domain/models/lista.dart';
import 'package:examen1/domain/repository/lista_repository.dart';

class ListaService {
  final ListaRepository _listaRepository = ListaRepository();

  Future<List<Lista>> getAllLista() async {
    return await _listaRepository.getAllLista();
  }
}