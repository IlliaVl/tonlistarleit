import 'package:tonlistarleit/data/models/music_entity_raw.dart';

class TrackRaw extends MusicEntityRaw {
  late final String artist;

  factory TrackRaw.fromMap(Map<String, dynamic> map) {
    return TrackRaw(
      artist: map['artist'] ?? '',
      map: map,
    );
  }

  TrackRaw({
    required this.artist,
    required Map<String, dynamic> map,
  }) : super.fromMap(map);


}
