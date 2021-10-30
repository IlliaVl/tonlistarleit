import 'package:equatable/equatable.dart';
import 'package:tonlistarleit/common/enums.dart';

class MusicEntity extends Equatable {
  final EntityType type;
  final String title;
  final String titleKey;
  final String? subtitle;
  final String? subtitleKey;
  final String imageUrl;

  const MusicEntity({
    required this.type,
    required this.title,
    required this.titleKey,
    this.subtitle,
    this.subtitleKey,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        type,
        title,
        titleKey,
        subtitle,
        subtitleKey,
        imageUrl,
      ];
}
