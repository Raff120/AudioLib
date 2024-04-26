import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:my_books_fe/utils/string_list_converter';

@DataClassName('AudioBookEntity')
class AudioBookDataset extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  IntColumn get currentChapter => integer()();
  IntColumn get currentMinute => integer()();
  IntColumn get totalDuration => integer()();
  TextColumn get audioFiles => text().map(const StringListConverter())();
  TextColumn get coverImage => text()();
}

// Definizione del database
// @UseMoor(tables: [AudioBookDataset])
// class AppDatabase extends GeneratedDatabase {
//   // Includi un campo allTables
//   AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);

//   @override
//   int get schemaVersion => 1;
  
//   @override
//   Iterable<TableInfo> get allTables => [audioBookDataset]; // Restituisci un elenco di tutte le tabelle nel database
// }


