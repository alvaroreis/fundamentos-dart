void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles

  print('#### Paciente com mais de 20 anos.');
  pacientes.forEach((paciente) {
    final dados = paciente.split('|');
    final idade = int.parse(dados[1]);
    if (idade > 20) {
      print('Nome: ${dados.first}');
      print('Idade: ${dados[1]}');
    }
  });
  print('');

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  int desenvolvedor = 0;
  int estudante = 0;
  int dentista = 0;
  int jornalista = 0;
  print('#### Quantos pacientes existem para cada profissão.');
  pacientes.forEach((paciente) {
    final dados = paciente.split('|');
    final profissao = dados[2].toLowerCase();
    switch (profissao) {
      case 'desenvolvedor':
        desenvolvedor++;
        break;
      case 'estudante':
        estudante++;
        break;
      case 'dentista':
        dentista++;
        break;
      case 'jornalista':
        jornalista++;
        break;
    }
  });

  print('desenvolvedor: $desenvolvedor');
  print('estudante: $estudante');
  print('dentista: $dentista');
  print('jornalista: $jornalista');
  print('');

  //! 3 - Apresente a quantidade de pacientes que moram em SP

  var sp = 0;
  pacientes.forEach((paciente) {
    final dados = paciente.split('|');
    final cidade = dados.last.toUpperCase();
    switch (cidade) {
      case 'SP':
        sp++;
        break;
    }
  });
  print('Pacientes de SP: $sp');
}
