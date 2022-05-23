import 'package:fundamentos_dart/6_consumindo_apis/desafio_final/repositories/filme_repository.dart';

class FilmeController {
  final _filmeRepository = FilmeRepository();

  Future<void> findAll() async {
    final filmes = await _filmeRepository.findAll();
    filmes.forEach(print);
  }

  Future<void> findById(String id) async {
    final filmes = await _filmeRepository.findById(id);
    print(filmes);
  }

  Future<void> update() async {
    var filme = await _filmeRepository.findById('774825');
    filme.adult = !filme.adult;
    await _filmeRepository.update(filme);
    filme = await _filmeRepository.findById('774825');
    print(filme);
  }
}
