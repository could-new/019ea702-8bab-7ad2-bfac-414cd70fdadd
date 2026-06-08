class Song {
  final String id;
  final String title;
  final String artist;
  final Duration duration;
  final String coverUrl;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.duration,
    required this.coverUrl,
  });
}

class RecordedTrack {
  final String id;
  final Song originalSong;
  final DateTime recordedAt;
  double vocalVolume;
  double backingTrackVolume;
  double reverbLevel;
  double echoLevel;

  RecordedTrack({
    required this.id,
    required this.originalSong,
    required this.recordedAt,
    this.vocalVolume = 1.0,
    this.backingTrackVolume = 0.8,
    this.reverbLevel = 0.2,
    this.echoLevel = 0.0,
  });
}
