import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService.internal();

  factory DatabaseService() => _instance;
  static Database? _db;
  final _databaseVersion = 1;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initializeDatabase();
    return _db!;
  }

  DatabaseService.internal();

  Future<Database> initializeDatabase() async {
    Directory? documentDirectory = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationSupportDirectory();

    String pathDatabase = join(documentDirectory!.path, 'LanguageRules.db');

    var existsDatabase = await databaseExists(pathDatabase);

    if (!existsDatabase) {
      try {
        await Directory(dirname(pathDatabase)).create(recursive: true);
      } catch (e) {
        Exception('Invalid database from storage $e');
      }

      ByteData data = await rootBundle.load(join('assets/databases', 'LanguageRules.db'));
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(pathDatabase).writeAsBytes(bytes, flush: true);
    }

    var onOpen = await openDatabase(pathDatabase, version: _databaseVersion);
    return onOpen;
  }

  closeDB() {
    _db!.close();
  }
}
