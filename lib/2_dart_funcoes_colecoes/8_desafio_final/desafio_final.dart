void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  print("1 - Remova os pacientes duplicados e apresente a nova lista");
  var pessoaNaoDuplicadas =
      pessoas.toSet().map((dados) => dados.split('|')).toList();
  pessoaNaoDuplicadas.forEach((element) => print(element[0]));
  print("");

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print(
      "2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas");
  var homens = [];
  var mulheres = [];

  var dados = pessoaNaoDuplicadas
      .map((pessoa) => <String, Object>{
            'nome': pessoa[0].toUpperCase(),
            'idade': int.parse(pessoa[1]),
            'sexo': pessoa[2].toUpperCase(),
          })
      .toList();

  dados.forEach((pessoa) {
    "MASCULINO".contains(pessoa['sexo'].toString())
        ? homens.add(pessoa['nome'])
        : mulheres.add(pessoa['nome']);
  });

  print('Quantidade de Homens: ${homens.toSet().length}');
  print('Quantidade de Mulheres: ${mulheres.toSet().length}');
  print("Lista de Homens: ${homens.toSet().join(', ')}");
  print("Lista de Mulheres:  ${mulheres.toSet().join(', ')}");
  print("");

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print(
      "3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome");
  var maiorDe18 = dados
      .where((element) => 18 < int.parse(element['idade'].toString()))
      .map((e) => e['nome'])
      .toSet()
      .join(", ");
  print("Maiores de 18 anos: $maiorDe18");
  print("");

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print("4 - Encontre a pessoa mais velha e apresente o nome dela.");
  var maisVelho = dados.reduce((a, b) =>
      int.parse(a['idade'].toString()) > int.parse(b['idade'].toString())
          ? a
          : b);
  print(
      "Mais velho da lista é ${maisVelho['nome']} e tem ${maisVelho['idade']} anos.");
}
