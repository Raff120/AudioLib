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
}
