import 'dart:convert';

import 'package:http/http.dart' as http;

/// Exception thrown when getAlbums fails.
class AlbumRequestFailure implements Exception {}

/// Exception thrown when album is not found.
class AlbumNotFoundFailure implements Exception {}

class MusicApi {
  MusicApi({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _apiKey = '6dcc2958e6ebf9b32c2021cca099c722';
  static const _baseUrl = 'ws.audioscrobbler.com';
  final http.Client _httpClient;

  Future<Map<String, dynamic>?> getAlbums(String searchText) async {
    final albumRequest = Uri.https(
      _baseUrl,
      '/2.0/',
      {
        'method': 'artist.search',
        'artist': searchText,
        // 'method': 'track.search',
        // 'track': searchText,
        // 'method': 'album.search',
        // 'album': searchText,
        'api_key': _apiKey,
        'format': 'json'
      },
    );
    final albumsResponse = await _httpClient.get(albumRequest);

    if (albumsResponse.statusCode != 200) {
      throw AlbumRequestFailure();
    }

    final bodyJson = jsonDecode(albumsResponse.body) as Map<String, dynamic>;

    if (bodyJson.isEmpty) {
      throw AlbumNotFoundFailure();
    }

    return bodyJson;
  }

  Future<Map<String, dynamic>?> getMusicEntities(
    String searchText,
    String entityKey,
  ) async {
    final request = Uri.https(
      _baseUrl,
      '/2.0/',
      {
        'method': '$entityKey.search',
        entityKey: searchText,
        'api_key': _apiKey,
        'format': 'json'
      },
    );
    final response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw AlbumRequestFailure();
    }

    final bodyJson = jsonDecode(response.body) as Map<String, dynamic>;

    if (bodyJson.isEmpty) {
      throw AlbumNotFoundFailure();
    }

    return bodyJson;
  }

  Future<Map<String, dynamic>?> getAlbumDetails({
    required String albumName,
    required String artistName,
  }) async {
    final albumRequest = Uri.https(
      _baseUrl,
      '/2.0/',
      {
        'method': 'album.getinfo',
        'album': albumName,
        'artist': artistName,
        'api_key': _apiKey,
        'format': 'json'
      },
    );
    final albumResponse = await _httpClient.get(albumRequest);

    if (albumResponse.statusCode != 200) {
      throw AlbumRequestFailure();
    }

    final bodyJson = jsonDecode(albumResponse.body) as Map<String, dynamic>;

    if (bodyJson.isEmpty) {
      throw AlbumNotFoundFailure();
    }

    return bodyJson;
  }
}
