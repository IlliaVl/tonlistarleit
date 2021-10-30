import 'package:bloc_test/bloc_test.dart';
import 'package:test/scaffolding.dart';
import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/data/models/music_entity.dart';
import 'package:tonlistarleit/data/repositories/lastfm_repository.dart';
import 'package:tonlistarleit/data/repositories/music_repository.dart';
import 'package:tonlistarleit/logic/music_entities_cubit.dart';

import 'mock_classes/mock_lastfm_api.dart';

main() {
  group('MusicEntitiesCubit', () {
    LastfmRepository lastfmRepository =
        LastfmRepository(musicApi: MockLastfmApi());
    MusicRepository musicRepository =
        MusicRepository(lastfmRepository: lastfmRepository);
    MusicEntitiesCubit musicEntitiesCubit = MusicEntitiesCubit(musicRepository);

    setUp(() => musicEntitiesCubit = MusicEntitiesCubit(musicRepository));

    tearDown(() => musicEntitiesCubit.close());

    blocTest(
      'Fetching albums',
      build: () => musicEntitiesCubit,
      act: (MusicEntitiesCubit cubit) =>
          cubit.fetchMusicEntities('', EntityType.album),
      expect: () => [
        MusicEntitiesLoadingState(),
        MusicEntitiesLoadedState([
          MusicEntity(
            type: EntityType.album,
            title: 'some rap songs',
            titleKey: EntityType.album.stringValue,
            subtitle: 'Earl Sweatshirt',
            subtitleKey: EntityType.artist.stringValue,
            imageUrl:
                'https://lastfm.freetls.fastly.net/i/u/64s/b7b9b1e9d8007ddaeaa9ee8a8e45a4c3.png',
          ),
          MusicEntity(
            type: EntityType.album,
            title: 'Some Nights',
            titleKey: EntityType.album.stringValue,
            subtitle: 'fun.',
            subtitleKey: EntityType.artist.stringValue,
            imageUrl:
                'https://lastfm.freetls.fastly.net/i/u/64s/23c8bf46a0794deeb989fb2edd8b1e76.png',
          )
        ])
      ],
    );

    blocTest(
      'Fetching tracks',
      build: () => musicEntitiesCubit,
      act: (MusicEntitiesCubit cubit) =>
          cubit.fetchMusicEntities('', EntityType.track),
      expect: () => [
        MusicEntitiesLoadingState(),
        MusicEntitiesLoadedState([
          MusicEntity(
            type: EntityType.track,
            title: 'Somebody That I Used To Know',
            titleKey: EntityType.track.stringValue,
            subtitle: 'Gotye',
            subtitleKey: EntityType.artist.stringValue,
            imageUrl:
                'https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png',
          ),
          MusicEntity(
            type: EntityType.track,
            title: 'Somebody Told Me',
            titleKey: EntityType.track.stringValue,
            subtitle: 'The Killers',
            subtitleKey: EntityType.artist.stringValue,
            imageUrl:
                'https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png',
          )
        ])
      ],
    );

    blocTest(
      'Fetching artists',
      build: () => musicEntitiesCubit,
      act: (MusicEntitiesCubit cubit) =>
          cubit.fetchMusicEntities('', EntityType.artist),
      expect: () => [
        MusicEntitiesLoadingState(),
        MusicEntitiesLoadedState([
          MusicEntity(
            type: EntityType.artist,
            title: 'Something Corporate',
            titleKey: EntityType.artist.stringValue,
            imageUrl:
                'https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png',
          ),
          MusicEntity(
            type: EntityType.artist,
            title: 'Someone Still Loves You Boris Yeltsin',
            titleKey: EntityType.artist.stringValue,
            imageUrl:
                'https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png',
          )
        ])
      ],
    );
  });
}
