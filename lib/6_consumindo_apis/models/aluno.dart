import 'dart:convert';

import 'curso.dart';
import 'endereco.dart';
import 'telefone.dart';

class Aluno {
  String? id;
  String nome;
  int? idade;
  List<String> nomeCursos;
  Endereco endereco;
  Telefone telefone;
  List<Curso> cursos;
  Aluno({
    this.id,
    required this.nome,
    this.idade,
    required this.nomeCursos,
    required this.endereco,
    required this.telefone,
    required this.cursos,
  });

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map['id'],
      nome: map['nome'] ?? '',
      idade: map['idade'],
      // nomeCursos: List<String>.from(map['nomeCursos']),
      nomeCursos: map['nomeCursos'].cast<String>(),
      endereco: Endereco.fromMap(map['endereco']),
      telefone: Telefone.fromMap(map['telefone']),
      cursos:
          map['cursos'].map<Curso>((curso) => Curso.fromMap(curso)).toList(),
    );
  }

  factory Aluno.fromJson(String source) => Aluno.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'idade': idade,
      'nomeCursos': nomeCursos,
      'endereco': endereco.toMap(),
      'telefone': telefone.toMap(),
      'cursos': cursos.map((curso) => curso.toMap()).toList(),
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome, idade: $idade, nomeCursos: $nomeCursos, endereco: $endereco, telefone: $telefone, cursos: $cursos)';
  }
}
