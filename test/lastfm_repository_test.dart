import 'package:test/scaffolding.dart';
import 'package:test/test.dart';
import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/data/models/music_entity.dart';
import 'package:tonlistarleit/data/models/music_entity_details.dart';
import 'package:tonlistarleit/data/repositories/lastfm_repository.dart';

import 'mock_classes/mock_lastfm_api.dart';

void main() {
  group('LastfmRepository', () {
    MockLastfmApi mockLastfmApi = MockLastfmApi();
    LastfmRepository lastfmRepository =
        LastfmRepository(musicApi: mockLastfmApi);

    test('Retrieving albums', () async {
      List<MusicEntity> albums =
          await lastfmRepository.getMusicEntities('', EntityType.album);
      expect(albums.length, 2);
      expect(albums[0].title, 'some rap songs');
      expect(albums[0].subtitle, 'Earl Sweatshirt');
      expect(albums[0].imageUrl,
          'https://lastfm.freetls.fastly.net/i/u/64s/b7b9b1e9d8007ddaeaa9ee8a8e45a4c3.png');
    });

    test('Retrieving artists', () async {
      List<MusicEntity> artists =
          await lastfmRepository.getMusicEntities('', EntityType.artist);
      expect(artists.length, 2);
      expect(artists[0].title, 'Something Corporate');
      expect(artists[0].subtitle, null);
      expect(artists[0].imageUrl,
          'https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png');
    });

    test('Retrieving tracks', () async {
      List<MusicEntity> tracks =
          await lastfmRepository.getMusicEntities('', EntityType.track);
      expect(tracks.length, 2);
      expect(tracks[0].title, 'Somebody That I Used To Know');
      expect(tracks[0].subtitle, 'Gotye');
      expect(tracks[0].imageUrl,
          'https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png');
    });

    test('Retrieving album details', () async {
      MusicEntityDetails album = await lastfmRepository.getMusicEntityDetails(
          const MusicEntity(
              type: EntityType.album,
              title: 'title',
              titleKey: 'titleKey',
              imageUrl: 'imageUrl'));
      expect(album.title,
          'Somewhere at the Bottom of the River Between Vega and Altair');
      expect(album.titleKey, EntityType.album.stringValue);
      expect(album.subtitle, 'La Dispute');
      expect(album.subtitleKey, EntityType.artist.stringValue);
      expect(album.imageUrl,
          'https:\/\/lastfm.freetls.fastly.net\/i\/u\/300x300\/e25ad3a369e547d989100a66e378e669.png');
    });

    test('Retrieving track details', () async {
      MusicEntityDetails track = await lastfmRepository.getMusicEntityDetails(
          const MusicEntity(
              type: EntityType.track,
              title: 'title',
              titleKey: 'titleKey',
              imageUrl: 'imageUrl'));
      expect(track.title, 'Call Out My Name');
      expect(track.titleKey, EntityType.track.stringValue);
      expect(track.subtitle, 'The Weeknd');
      expect(track.subtitleKey, EntityType.artist.stringValue);
      expect(track.imageUrl, '');
    });

    test('Retrieving artist details', () async {
      MusicEntityDetails artist = await lastfmRepository.getMusicEntityDetails(
          const MusicEntity(
              type: EntityType.artist,
              title: 'title',
              titleKey: 'titleKey',
              imageUrl: 'imageUrl'));
      expect(artist.title, 'Deep Blue Something');
      expect(artist.titleKey, EntityType.artist.stringValue);
      expect(
          artist.subtitle, 'Deep Blue Something is an American rock band...');
      expect(artist.subtitleKey, 'bio');
      expect(artist.imageUrl,
          'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png');
    });
  });
}
