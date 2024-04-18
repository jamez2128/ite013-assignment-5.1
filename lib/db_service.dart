import 'dart:developer';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'db_model.dart';

class DatabaseService {
  static final DatabaseService _databaseService = DatabaseService._internal();

  factory DatabaseService() => _databaseService;

  DatabaseService._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final getDirectory = await getApplicationDocumentsDirectory();
    String path = getDirectory.path + '/quiz.db';
    log(path);
    return await openDatabase(path, onCreate: _onCreate, version: 1);
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE users(user_id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT NOT NULL UNIQUE, password TEXT NOT NULL)');
    log('TABLE CREATED');
  }

  Future<List<Users>> getUser(userId) async {
    final db = await _databaseService.database;
    var data = await db.rawQuery('SELECT * FROM Users WHERE user_id = ?', [userId]);
    List<Users> user =
    List.generate(data.length, (index) => Users.fromJson(data[index]));
    return user;
  }

  Future<void> registerUser(Users user) async {
    final db = await _databaseService.database;
    var data = await db.rawInsert(
        'INSERT INTO users(username, password) VALUES(?,?)',
        [user.username, user.password]);
    log('inserted $data');
  }
}