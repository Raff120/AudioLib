// ignore_for_file: constant_identifier_names

import 'package:my_books_fe/models/audiobook.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseProvider {
  static const String DATABASE_NAME = 'audiolib.db';

  //AUDIOBOOKS TABLE
  static const String TABLE_NAME = 'audio_books';
  static const String COLUMN_ID = 'id';
  static const String COLUMN_TITLE = 'title';
  static const String COLUMN_DESCRIPTION = 'description';
  static const String COLUMN_CURRENT_CHAPTER = 'current_chapter';
  static const String COLUMN_CURRENT_MINUTE = 'current_minute';
  static const String COLUMN_TOTAL_DURATION = 'total_duration';
  static const String COLUMN_AUDIO_FILES = 'audio_files';
  static const String COLUMN_COVER_IMAGE = 'cover_image';

  late Database _database;

  Future open() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'my_database.db'),
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          '''
          CREATE TABLE $TABLE_NAME (
            $COLUMN_ID INTEGER PRIMARY KEY,
            $COLUMN_TITLE TEXT,
            $COLUMN_DESCRIPTION TEXT,
            $COLUMN_CURRENT_CHAPTER INTEGER,
            $COLUMN_CURRENT_MINUTE INTEGER,
            $COLUMN_TOTAL_DURATION INTEGER,
            $COLUMN_AUDIO_FILES TEXT,
            $COLUMN_COVER_IMAGE TEXT
          )
          ''',
        );
      },
    );
  }

  Future<void> insertAudioBook(AudioBook audioBook) async {
    await _database.insert(
      TABLE_NAME,
      audioBook.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<AudioBook>> getAudioBooks() async {
    final List<Map<String, dynamic>> maps = await _database.query(TABLE_NAME);
    return List.generate(maps.length, (i) {
      return AudioBook(
        id: maps[i][COLUMN_ID],
        title: maps[i][COLUMN_TITLE],
        description: maps[i][COLUMN_DESCRIPTION],
        currentChapter: maps[i][COLUMN_CURRENT_CHAPTER],
        currentMinute: maps[i][COLUMN_CURRENT_MINUTE],
        totalDuration: maps[i][COLUMN_TOTAL_DURATION],
        audioFiles: maps[i][COLUMN_AUDIO_FILES].split(','),
        coverImage: maps[i][COLUMN_COVER_IMAGE],
      );
    });
  }

  Future<AudioBook> getAudioBookById(int id) async {
    List<Map<String, dynamic>> maps = await _database.query(
      TABLE_NAME,
      where: '$COLUMN_ID = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return AudioBook(
        id: maps[0][COLUMN_ID],
        title: maps[0][COLUMN_TITLE],
        description: maps[0][COLUMN_DESCRIPTION],
        currentChapter: maps[0][COLUMN_CURRENT_CHAPTER],
        currentMinute: maps[0][COLUMN_CURRENT_MINUTE],
        totalDuration: maps[0][COLUMN_TOTAL_DURATION],
        audioFiles: maps[0][COLUMN_AUDIO_FILES].split(','),
        coverImage: maps[0][COLUMN_COVER_IMAGE],
      );
    }
    throw Exception('AudioBook with id $id not found');
  }

  Future<void> updateAudioBook(AudioBook audioBook) async {
    await _database.update(
      TABLE_NAME,
      audioBook.toMap(),
      where: '$COLUMN_ID = ?',
      whereArgs: [audioBook.id],
    );
  }

  Future<void> deleteAudioBook(int id) async {
    await _database.delete(
      TABLE_NAME,
      where: '$COLUMN_ID = ?',
      whereArgs: [id],
    );
  }
}
