import 'package:tonlistarleit/data/models/music_entity_raw.dart';

class AlbumRaw extends MusicEntityRaw {
  late String artist;

  factory AlbumRaw.fromMap(Map<String, dynamic> map) {
    return AlbumRaw(
      artist: map['artist'] ?? '',
      map: map,
    );
  }

  AlbumRaw({
    required this.artist,
    required Map<String, dynamic> map,
  }) : super.fromMap(map);
}
