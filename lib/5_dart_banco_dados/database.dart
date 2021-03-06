import 'package:mysql1/mysql1.dart';

class Database {
  Future<MySqlConnection> openConnection() async {
    final settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '2002oitavo',
      db: 'dart_mysql',
    );

    final connection = await MySqlConnection.connect(settings);
    await Future.delayed(Duration(seconds: 1));
    return connection;
  }
}
