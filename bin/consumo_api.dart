import 'dart:convert';

import 'package:fundamentos_dart/6_consumindo_apis/models/aluno.dart';

void main(List<String> args) {
  // AlunoController().findAll();
  // AlunoController().findById('2');
  // AlunoController().update();
  // AlunoController().insert();
  // AlunoController().findById('e65b5340-dac5-11ec-88f2-950de4657195');
  var valor = 12.0;

  print(valor.runtimeType);
}

void main2(List<String> args) {
  final cidadeJson = """
                {
                  "id": "1",
                  "nome": "Belém"
                }
""";
// [] -> List
// {} -> Map<String, dunamic>

  final map = json.decode(cidadeJson);
  print(map);

  final alunoJson = """
        {
            "id": "2",
            "nome": "Leticia Cardoso",
            "idade": 21,
            "nomeCursos": [     
                    "Academia do Flutter",
                    "Academia do Flutter"                 
            ],
            "cursos": [
                {
                    "id": 1,
                    "nome": "Academia do Flutter",
                    "isAluno": true
                },
                {
                    "id": 2,
                    "nome": "Academia do Flutter",
                    "isAluno": false
                }
            ],
            "telefone": {
                "ddd": "91",
                "telefone": "998210212"
            },
            "endereco":{
                "rua": "Rua X",
                "numero": 200,
                "CEP": "990218123",
                "cidade":{
                    "id": 1,
                    "nome": "Belém"
                }
            }
        }
""";

  var aluno = Aluno.fromJson(alunoJson);
  print(aluno);
}
