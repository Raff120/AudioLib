import 'package:moor/moor.dart';

class StringListConverter extends TypeConverter<List<String>?, String?> {
  const StringListConverter();

  @override
  List<String>? mapToDart(String? fromDb) {
    if (fromDb == null) {
      return [];
    }
    return fromDb.split('|');
  }

  @override
  String? mapToSql(List<String>? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    return value.join('|');
  }
}
