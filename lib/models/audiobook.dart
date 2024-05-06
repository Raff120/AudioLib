import 'package:my_books_fe/database/database-provider.dart';

class AudioBook {
  final int id;
  final String title;
  final String description;
  final int currentChapter;
  final int currentMinute;
  final int totalDuration;
  final List<String> audioFiles;
  final String coverImage;

  AudioBook({
    required this.id,
    required this.title,
    required this.description,
    required this.currentChapter,
    required this.currentMinute,
    required this.totalDuration,
    required this.audioFiles,
    required this.coverImage,
  });

  Map<String, dynamic> toMap() {
    return {
      DatabaseProvider.COLUMN_ID: id,
      DatabaseProvider.COLUMN_TITLE: title,
      DatabaseProvider.COLUMN_DESCRIPTION: description,
      DatabaseProvider.COLUMN_CURRENT_CHAPTER: currentChapter,
      DatabaseProvider.COLUMN_CURRENT_MINUTE: currentMinute,
      DatabaseProvider.COLUMN_TOTAL_DURATION: totalDuration,
      DatabaseProvider.COLUMN_AUDIO_FILES: audioFiles.join(','),
      DatabaseProvider.COLUMN_COVER_IMAGE: coverImage,
    };
  }
}
