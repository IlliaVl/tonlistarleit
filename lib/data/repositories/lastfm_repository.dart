import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/data/data_providers/music_api.dart';
import 'package:tonlistarleit/data/models/album_raw.dart';
import 'package:tonlistarleit/data/models/music_entity.dart';
import 'package:tonlistarleit/data/models/music_entity_raw.dart';
import 'package:tonlistarleit/data/models/track_raw.dart';

class LastfmRepository {
  LastfmRepository({MusicApi? musicApi}) : _musicApi = musicApi ?? MusicApi();

  final MusicApi _musicApi;

  Future<List<MusicEntity>> getMusicEntities(
    String searchString,
    EntityType entityKey,
  ) async {
    final responseJson = await _musicApi.getMusicEntities(
      searchString,
      entityKey.stringValue,
    );
    final entitiesJsonList = responseJson?['results']
        ?['${entityKey.stringValue}matches']?[entityKey.stringValue] as List;

    if (entitiesJsonList.isEmpty) {
      throw AlbumNotFoundFailure();
    }
    return entitiesJsonList
        .map((entityJson) => _getEntity(entityJson, entityKey))
        .toList();
  }

  MusicEntity _getEntity(dynamic entityJson, EntityType entityKey) {
    MusicEntityRaw musicEntityRaw;
    String? subtitle;
    String? subtitleKey;
    switch (entityKey) {
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
      title: musicEntityRaw.name,
      titleKey: entityKey.stringValue,
      subtitle: subtitle,
      subtitleKey: subtitleKey,
      imageUrl: musicEntityRaw.mediumImage ?? '',
    );
  }

  Future<List<MusicEntity>> getAlbums(String searchString) async =>
      await getMusicEntities(searchString, EntityType.album);

  Future<List<MusicEntity>> getTracks(String searchString) async =>
      await getMusicEntities(searchString, EntityType.track);

  Future<List<MusicEntity>> getArtists(String searchString) async =>
      await getMusicEntities(searchString, EntityType.artist);
}