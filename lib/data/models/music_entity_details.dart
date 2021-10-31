import 'package:tonlistarleit/data/models/music_entity.dart';
import 'package:tonlistarleit/data/models/tag.dart';

class MusicEntityDetails extends MusicEntity {
  final List<Tag>? tags;

  @override
  List<Object?> get props {
    final pp = super.props..add(tags);
    return pp;
  }

  const MusicEntityDetails(
    this.tags,
    type,
    title,
    titleKey,
    subtitle,
    subtitleKey,
    imageUrl,
    url,
  ) : super(
          type: type,
          title: title,
          titleKey: titleKey,
          subtitle: subtitle,
          subtitleKey: subtitleKey,
          imageUrl: imageUrl,
          url: url,
        );
}
