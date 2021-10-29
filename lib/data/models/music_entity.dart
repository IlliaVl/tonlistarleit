class MusicEntity {
  late final String title;
  late final String titleKey;
  late final String? subtitle;
  late final String? subtitleKey;
  late final String imageUrl;

  MusicEntity({
    required this.title,
    required this.titleKey,
    this.subtitle,
    this.subtitleKey,
    required this.imageUrl,
  });
}
