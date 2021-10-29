import 'package:collection/collection.dart';
import 'package:tonlistarleit/data/models/image_data.dart';

class Album {
  late final String id;
  late final String name;
  late final String artist;
  late final String url;
  late final String streamable;
  late final List<ImageData> imageDataList;

  String? get mediumImage => imageDataList
      .firstWhereOrNull((imageData) => imageData.size == 'medium')
      ?.textUrl;

  Album({
    required this.id,
    required this.name,
    required this.artist,
    required this.url,
    required this.streamable,
    required this.imageDataList,
  });
  // <artist>Weezer</artist>
  // <id>2025180</id>
  // <url>http://www.last.fm/music/Weezer/Make+Believe</url>
  // <image size="small">http://userserve-ak.last.fm/serve/34/8673675.jpg</image>
  // <image size="medium">http://userserve-ak.last.fm/serve/64/8673675.jpg</image>
  // <image size="large">http://userserve-ak.last.fm/serve/126/8673675.jpg</image>
  // <streamable>0</streamable>

  // Album({required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'artist': artist,
      'url': url,
      'streamable': streamable,
    };
  }

  factory Album.fromMap(Map<String, dynamic> map) {
    return Album(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      artist: map['artist'] ?? '',
      url: map['url'] ?? '',
      streamable: map['streamable'] ?? '0',
      imageDataList: ((map['image'] ?? []) as List)
          .map((imageDataMap) => ImageData.fromMap(imageDataMap))
          .toList(),
    );
  }
}