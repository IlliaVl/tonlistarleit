class ImageData {
  late final String textUrl;
  late final String size;

  ImageData({required this.textUrl, required this.size});

  Map<String, dynamic> toMap() {
    return {
      '#text': textUrl,
      'size': size,
    };
  }

  factory ImageData.fromMap(Map<String, dynamic> map) {
    return ImageData(
      textUrl: map['#text'] ?? '',
      size: map['size'] ?? '',
    );
  }
}
