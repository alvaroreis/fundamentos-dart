import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/aluno.dart';

class AlunoRepository {
  final urlBase = 'http://localhost:3031/alunos';

  Future<List<Aluno>> findAll() async {
    var response = await http.get(Uri.parse(urlBase));

    return jsonDecode(response.body)
        .map<Aluno>((aluno) => Aluno.fromMap(aluno))
        .toList();
  }

  Future<Aluno> findById(String id) async {
    var response = await http.get(Uri.parse('$urlBase/$id'));
    return Aluno.fromJson(response.body);
  }

  Future<void> update(Aluno aluno) async {
    await http.put(
      Uri.parse('$urlBase/${aluno.id}'),
      body: aluno.toJson(),
      headers: {'content-type': 'application/json'},
    );
  }

  Future<void> insert(Aluno aluno) async {
    await http.post(
      Uri.parse('$urlBase/'),
      body: aluno.toJson(),
      headers: {'content-type': 'application/json'},
    );
  }
}
