import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/data/data_providers/lastfm_api.dart';
import 'package:tonlistarleit/data/models/album_details_raw.dart';
import 'package:tonlistarleit/data/models/music_entity_details.dart';
import 'package:tonlistarleit/data/models/album_raw.dart';
import 'package:tonlistarleit/data/models/artist_details_raw.dart';
import 'package:tonlistarleit/data/models/music_entity.dart';
import 'package:tonlistarleit/data/models/music_entity_raw.dart';
import 'package:tonlistarleit/data/models/track_details_raw.dart';
import 'package:tonlistarleit/data/models/track_raw.dart';

class LastfmRepository {
  LastfmRepository({LastfmApi? musicApi}) : _musicApi = musicApi ?? LastfmApi();

  final LastfmApi _musicApi;

  Future<List<MusicEntity>> getMusicEntities(
    String searchString,
    EntityType entityType,
  ) async {
    final responseJson = await _musicApi.getMusicEntities(
      searchString,
      entityType,
    );
    final entitiesJsonList = responseJson['results']
        ?['${entityType.stringValue}matches']?[entityType.stringValue] as List;

    if (entitiesJsonList.isEmpty) {
      throw MusicEntityNotFoundFailure();
    }
    return entitiesJsonList
        .map((entityJson) => _getEntity(entityJson, entityType))
        .toList();
  }

  MusicEntity _getEntity(dynamic entityJson, EntityType entityType) {
    MusicEntityRaw musicEntityRaw;
    String? subtitle;
    String? subtitleKey;
    switch (entityType) {
      case EntityType.album:
        musicEntityRaw = AlbumRaw.fromMap(entityJson);
        subtitle = (musicEntityRaw as AlbumRaw).artist;
        subtitleKey = EntityType.artist.stringValue;
        break;
      case EntityType.track:
        musicEntityRaw = TrackRaw.fromMap(entityJson);
        subtitle = (musicEntityRaw as TrackRaw).artist;
        subtitleKey = EntityType.artist.stringValue;
        break;
      case EntityType.artist:
        musicEntityRaw = MusicEntityRaw.fromMap(entityJson);
        break;
    }
    return MusicEntity(
      type: entityType,
      title: musicEntityRaw.name,
      titleKey: entityType.stringValue,
      subtitle: subtitle,
      subtitleKey: subtitleKey,
      imageUrl: musicEntityRaw.mediumImage ?? '',
    );
  }

  Future<MusicEntityDetails> getMusicEntityDetails(
      MusicEntity musicEntity) async {
    final entityType = musicEntity.type;
    Map<String, String> additionalQueryParameters = {
      entityType.stringValue: musicEntity.title
    };
    if (entityType == EntityType.album || entityType == EntityType.track) {
      additionalQueryParameters[EntityType.artist.stringValue] =
          musicEntity.subtitle ?? '';
    }
    final responseJson = await _musicApi.getMusicEntityDetails(
      entityType,
      additionalQueryParameters,
    );

    MusicEntityDetails musicEntityDetails;
    switch (entityType) {
      case EntityType.album:
        final albumDetailsRaw = AlbumDetailsRaw.fromJson(responseJson);
        musicEntityDetails = MusicEntityDetails(
          entityType,
          albumDetailsRaw.album?.name ?? '',
          entityType.stringValue,
          albumDetailsRaw.album?.artist,
          EntityType.artist.stringValue,
          albumDetailsRaw.album?.extralargeImage ??
              albumDetailsRaw.album?.largeImage ??
              '',
        );
        break;
      case EntityType.track:
        final trackDetailsRaw = TrackDetailsRaw.fromJson(responseJson);
        musicEntityDetails = MusicEntityDetails(
          entityType,
          trackDetailsRaw.track?.name ?? '',
          entityType.stringValue,
          trackDetailsRaw.track?.artist?.name ?? '',
          EntityType.artist.stringValue,
          '',
        );
        break;
      case EntityType.artist:
        final artistDetailsRaw = ArtistDetailsRaw.fromJson(responseJson);
        musicEntityDetails = MusicEntityDetails(
          entityType,
          artistDetailsRaw.artist?.name ?? '',
          entityType.stringValue,
          artistDetailsRaw.artist?.bio?.summary ?? '',
          'bio',
          artistDetailsRaw.artist?.extralargeImage ??
              artistDetailsRaw.artist?.largeImage ??
              '',
        );
        break;
    }
    return musicEntityDetails;
  }
}
