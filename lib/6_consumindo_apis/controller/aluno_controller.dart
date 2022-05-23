import 'package:fundamentos_dart/6_consumindo_apis/models/curso.dart';
import 'package:fundamentos_dart/6_consumindo_apis/repositories/aluno_repository.dart';

class AlunoController {
  final _alunoRepository = AlunoRepository();
  Future<void> findAll() async {
    final alunos = await _alunoRepository.findAll();
    alunos.forEach(print);
  }

  Future<void> findById(String id) async {
    final aluno = await _alunoRepository.findById(id);
    print(aluno);
  }

  Future<void> update() async {
    var aluno = await _alunoRepository.findById("1");
    aluno.nomeCursos.add('Primefaces responsivo');
    await _alunoRepository.update(aluno);

    aluno = await _alunoRepository.findById("1");
    print(aluno);
  }

  Future<void> insert() async {
    var aluno = await _alunoRepository.findById("2");
    aluno.id = null;
    aluno.nome = 'José Ferreira';
    aluno.nomeCursos.add('Flutter Responsivo');
    aluno.cursos.add(Curso(id: 3, nome: 'Flutter Responsivo', isAluno: true));
    await _alunoRepository.insert(aluno);

    var alunos = await _alunoRepository.findAll();
    print(alunos);
  }
}
