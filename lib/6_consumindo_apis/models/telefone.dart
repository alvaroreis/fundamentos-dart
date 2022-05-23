import 'dart:convert';

class Telefone {
  String ddd;
  String telefone;
  Telefone({
    required this.ddd,
    required this.telefone,
  });

  // metodo que pega o objeto e transforma em Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return {'ddd': ddd, 'telefone': telefone};
  }

  // é um CONSTRUTOR  que pega um MAP e transforma em um objeto
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? '',
      telefone: map['telefone'] ?? '',
    );
  }

  // é um metodo que retorna uma string JSON do meu obj
  String toJson() => jsonEncode(toMap());

  // é um metodo que baseado em ums string JSON retorna obj
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

  @override
  String toString() => 'Telefone(ddd: $ddd, telefone: $telefone)';
}
