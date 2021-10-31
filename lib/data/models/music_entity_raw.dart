import 'package:collection/collection.dart';
import 'package:tonlistarleit/data/models/image_data.dart';

class MusicEntityRaw {
  late final String name;
  late final String? url;
  late final List<ImageData> imageDataList;

  String? get mediumImage => imageDataList
      .firstWhereOrNull((imageData) => imageData.size == 'medium')
      ?.textUrl;

  MusicEntityRaw({
    required this.name,
    required this.url,
    required this.imageDataList,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  MusicEntityRaw.fromMap(Map<String, dynamic> map) {
    name = map['name'] ?? '';
    url = map['url'];
    imageDataList = ((map['image'] ?? []) as List)
        .map((imageDataMap) => ImageData.fromMap(imageDataMap))
        .toList();
  }
}
