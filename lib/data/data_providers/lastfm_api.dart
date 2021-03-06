import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/common/music_entity_fetch_failure.dart';

class LastfmApi {
  LastfmApi({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _apiKey = '6dcc2958e6ebf9b32c2021cca099c722';
  static const _baseUrl = 'ws.audioscrobbler.com';
  final http.Client _httpClient;

  Uri _getRequest(String method,
      Map<String, String> additionalQueryParameters,) =>
      Uri.https(
        _baseUrl,
        '/2.0/',
        {
          'method': method,
          ...additionalQueryParameters,
          'api_key': _apiKey,
          'format': 'json'
        },
      );

  Future<Map<String, dynamic>> _call(String method,
      Map<String, String> additionalQueryParameters,) async {
    final response = await _httpClient.get(_getRequest(
      method,
      additionalQueryParameters,
    ));

    Map<String, dynamic> bodyJson;
    try {
      bodyJson = jsonDecode(response.body) as Map<String, dynamic>;
    } catch (_) {
      throw const MusicEntityFetchFailure();
    }
    if (response.statusCode != 200) {
      throw MusicEntityFetchFailure(bodyJson['message']);
    }
    return bodyJson;
  }

  Future<Map<String, dynamic>> getMusicEntities(String searchText,
      EntityType entityType,) async =>
      await _call(
        '${entityType.stringValue}.search',
        {entityType.stringValue: searchText},
      );

  Future<Map<String, dynamic>> getMusicEntityDetails(EntityType entityType,
      Map<String, String> additionalQueryParameters,) async =>
      await _call(
        '${entityType.stringValue}.getinfo',
        additionalQueryParameters,
      );
}
