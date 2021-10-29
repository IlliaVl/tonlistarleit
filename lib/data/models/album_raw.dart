import 'package:tonlistarleit/data/models/music_entity_raw.dart';

class AlbumRaw extends MusicEntityRaw {
  late String artist;

  factory AlbumRaw.fromMap(Map<String, dynamic> map) {
    return AlbumRaw(
      artist: map['artist'] ?? '',
      map: map,
      // name: map['name'] ?? '',
      // imageDataList: ((map['image'] ?? []) as List)
      //     .map((imageDataMap) => ImageData.fromMap(imageDataMap))
      //     .toList(),
    );
  }

  //
  // AlbumRaw({
  //   required this.artist,
  //   name,
  //   imageDataList,
  // }) : super.fromMap(name: name, imageDataList: imageDataList);

  AlbumRaw({
    required this.artist,
    required Map<String, dynamic> map,
  }) : super.fromMap(map);
}
