import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DatabaseReg {
  static final DatabaseReg _instance = DatabaseReg.internal();
  factory DatabaseReg() => _instance;

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  DatabaseReg.internal();

  Future<Database> initDb() async {
    Directory? documentDirectory;
    if (Platform.isAndroid || Platform.isIOS) {
      documentDirectory = await getApplicationDocumentsDirectory();
    } else if (Platform.isMacOS || Platform.isLinux) {
      documentDirectory = await getApplicationSupportDirectory();
    } else {
      throw UnsupportedError("Platform not supported");
    }

    String path = join(documentDirectory.path, "register.db");
    var regDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return regDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE users(id INTEGER PRIMARY KEY, username TEXT, email TEXT, password TEXT)");
    print("Table Created!");
  }

  Future<List<Map<String, dynamic>>> getUserData() async {
    Database dbClient = await db;
    return await dbClient.query('users', limit: 1);
  }
}
