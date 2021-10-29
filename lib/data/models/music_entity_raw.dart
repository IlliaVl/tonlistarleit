import 'package:collection/collection.dart';
import 'package:tonlistarleit/data/models/image_data.dart';

class MusicEntityRaw {
  String get key1 => 'track';


  late final String name;
  late final List<ImageData> imageDataList;

  String? get mediumImage => imageDataList
      .firstWhereOrNull((imageData) => imageData.size == 'medium')
      ?.textUrl;

  MusicEntityRaw({
    required this.name,
    required this.imageDataList,
  });

  // MusicEntityRaw({
  //   required Map<String, dynamic> map
  // });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  MusicEntityRaw.fromMap(Map<String, dynamic> map) {
    name = map['name'] ?? '';
    imageDataList = ((map['image'] ?? []) as List)
        .map((imageDataMap) => ImageData.fromMap(imageDataMap))
        .toList();
  }
// factory MusicEntityRaw.fromMap(Map<String, dynamic> map) {
//   return MusicEntityRaw(
//     name: map['name'] ?? '',
//     imageDataList: ((map['image'] ?? []) as List)
//         .map((imageDataMap) => ImageData.fromMap(imageDataMap))
//         .toList(),
//   );
// }
}
