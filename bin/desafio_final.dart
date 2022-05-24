import 'dart:developer';

import 'package:fundamentos_dart/7_desafio_final/database/database.dart';
import 'package:fundamentos_dart/7_desafio_final/models/estado.dart';
import 'package:fundamentos_dart/7_desafio_final/repositories/cidade_repository.dart';
import 'package:fundamentos_dart/7_desafio_final/repositories/estado_repository.dart';

Future<void> main(List<String> args) async {
  var _conn = await Database.openConnection();
  var cidadeRepository = CidadeRepository(connection: _conn);
  var estadoRepository = EstadoRepository(connection: _conn);

  try {
    log('######### limpando tabelas');
    await cidadeRepository.clean();
    await estadoRepository.clean();

    log('######### Buscando estados');
    List<Estado> estados = await estadoRepository.fetchAll();

    log('######### Salvando estados');
    await estadoRepository.saveAll(estados);

    // salvando as cidades do Pará - PA
    log('######### Buscando cidade do Pará');
    final pa = estados.where((estado) => estado.sigla == 'PA').first;
    await cidadeRepository.fetchByIdEstado(pa);

    //log('######### Buscando cidades por estados');
    // await cidadeRepository.fetch(estados);
  } catch (e) {
    log(e.toString());
  } finally {
    _conn.close();
  }
}
