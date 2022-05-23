import 'dart:convert';

import 'cidade.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;

  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
  });

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] ?? '',
      numero: map['numero'] ?? 0,
      cep: map['CEP'] ?? '',
      cidade: Cidade.fromMap(map['cidade']),
    );
  }

  factory Endereco.fromJson(String source) =>
      Endereco.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'Endereco(rua: $rua, numero: $numero, cep: $cep, cidade: $cidade)';
  }
}
