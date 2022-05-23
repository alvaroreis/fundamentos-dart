import 'dart:convert';

class Curso {
  int id;
  String nome;
  bool isAluno;
  Curso({
    required this.id,
    required this.nome,
    required this.isAluno,
  });

  factory Curso.fromMap(Map<String, dynamic> map) {
    return Curso(
      id: map['id'] ?? 0,
      nome: map['nome'] ?? '',
      isAluno: map['isAluno'] ?? false,
    );
  }

  factory Curso.fromJson(String source) => Curso.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'isAluno': isAluno,
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() => 'Curso(id: $id, nome: $nome, isAluno: $isAluno)';
}
