import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/data/models/album.dart';
import 'package:tonlistarleit/data/models/album_details.dart';
import 'package:tonlistarleit/data/models/music_entity.dart';
import 'package:tonlistarleit/data/repositories/lastfm_repository.dart';

class MusicRepository {
  MusicRepository({LastfmRepository? lastfmRepository})
      : _lastfmRepository = lastfmRepository ?? LastfmRepository();

  final LastfmRepository _lastfmRepository;

  Future<List<MusicEntity>> getMusicEntities(
    String searchString,
    EntityType entityKey,
  ) async =>
      await _lastfmRepository.getMusicEntities(searchString, entityKey);

  Future<AlbumDetails> getAlbumDetails(Album album) async {
    // final responseJson = await _musicApi.getAlbumDetails(
    //   albumName: album.name,
    //   artistName: album.artist,
    // );
    //
    // final albumDetailsJsonList =
    //     responseJson?['results']?['albummatches']?['album'] as List;
    //
    // if (albumDetailsJsonList.isEmpty) {
    //   throw AlbumNotFoundFailure();
    // }
    return AlbumDetails();
    // return albumsJsonList.map((albumJson) => Album.fromMap(albumJson)).toList();
  }
}
