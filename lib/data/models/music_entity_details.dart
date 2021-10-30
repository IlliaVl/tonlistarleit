import 'package:tonlistarleit/data/models/music_entity.dart';

class MusicEntityDetails extends MusicEntity {
  MusicEntityDetails(
    type,
    title,
    titleKey,
    subtitle,
    subtitleKey,
    imageUrl,
  ) : super(
          type: type,
          title: title,
          titleKey: titleKey,
          subtitle: subtitle,
          subtitleKey: subtitleKey,
          imageUrl: imageUrl,
        );
}
