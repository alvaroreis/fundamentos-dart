import 'repositories/cidade_repository.dart';
import 'repositories/user_repository.dart';

Future<void> main() async {
  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();

  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);

    var user = await userRepository.findAllUsers(1);
    print(user?.name ?? 'Usuário nãp encontrado');
  } on Exception {
    print('Erro ao buscar cidade');
  }
}
