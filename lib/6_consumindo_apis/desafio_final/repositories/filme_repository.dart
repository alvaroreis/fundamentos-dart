import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/filme.dart';

class FilmeRepository {
  final urlBase = 'http://localhost:3031/filmes';
  Future<List<Filme>> findAll() async {
    final response = await http.get(Uri.parse(urlBase));
    return jsonDecode(response.body)
        .map<Filme>((filme) => Filme.fromMap(filme))
        .toList();
  }

  Future<Filme> findById(String id) async {
    final response = await http.get(Uri.parse('$urlBase/$id'));
    return Filme.fromJson(response.body);
  }

  Future<void> update(Filme filme) async {
    await http.put(
      Uri.parse('$urlBase/${filme.id}'),
      body: filme.toJson(),
      headers: {'content-type': 'application/json'},
    );
  }
}
