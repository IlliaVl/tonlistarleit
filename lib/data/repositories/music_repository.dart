import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/data/models/music_entity.dart';
import 'package:tonlistarleit/data/models/music_entity_details.dart';
import 'package:tonlistarleit/data/repositories/lastfm_repository.dart';

class MusicRepository {
  MusicRepository({LastfmRepository? lastfmRepository})
      : _lastfmRepository = lastfmRepository ?? LastfmRepository();

  final LastfmRepository _lastfmRepository;

  Future<List<MusicEntity>> getMusicEntities(
    String searchString,
    EntityType entityType,
  ) async =>
      await _lastfmRepository.getMusicEntities(searchString, entityType);

  Future<MusicEntityDetails> getMusicEntityDetails(MusicEntity musicEntity) async =>
      await _lastfmRepository.getMusicEntityDetails(musicEntity);
}
