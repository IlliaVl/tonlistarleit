import 'package:tonlistarleit/data/data_providers/music_api.dart';
import 'package:tonlistarleit/data/models/album.dart';
import 'package:tonlistarleit/data/models/album_details.dart';

class MusicRepository {
  MusicRepository({MusicApi? musicApi}) : _musicApi = musicApi ?? MusicApi();

  final MusicApi _musicApi;

  Future<List<Album>> getAlbums(String name) async {
    final responseJson = await _musicApi.getAlbums(name);

    // final albumsJsonList =
    //     responseJson?['results']?['albummatches']?['album'] as List;
    final albumsJsonList =
        responseJson?['results']?['artistmatches']?['artist'] as List;
    // final albumsJsonList =
    //     responseJson?['results']?['trackmatches']?['track'] as List;

    if (albumsJsonList.isEmpty) {
      throw AlbumNotFoundFailure();
    }
    return albumsJsonList.map((albumJson) => Album.fromMap(albumJson)).toList();
  }

  Future<AlbumDetails> getAlbumDetails(Album album) async {
    final responseJson = await _musicApi.getAlbumDetails(
      albumName: album.name,
      artistName: album.artist,
    );

    final albumDetailsJsonList =
        responseJson?['results']?['albummatches']?['album'] as List;

    if (albumDetailsJsonList.isEmpty) {
      throw AlbumNotFoundFailure();
    }
    return AlbumDetails();
    // return albumsJsonList.map((albumJson) => Album.fromMap(albumJson)).toList();
  }
}
