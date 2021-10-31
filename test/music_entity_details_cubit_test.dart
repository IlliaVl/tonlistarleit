import 'package:bloc_test/bloc_test.dart';
import 'package:test/scaffolding.dart';
import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/data/models/music_entity.dart';
import 'package:tonlistarleit/data/models/music_entity_details.dart';
import 'package:tonlistarleit/data/models/tag.dart';
import 'package:tonlistarleit/data/repositories/lastfm_repository.dart';
import 'package:tonlistarleit/data/repositories/music_repository.dart';
import 'package:tonlistarleit/logic/music_entity_details_cubit.dart';

import 'mock_classes/mock_lastfm_api.dart';

main() {
  group('MusicEntityDetailsCubit', () {
    LastfmRepository lastfmRepository =
        LastfmRepository(musicApi: MockLastfmApi());
    MusicRepository musicRepository =
        MusicRepository(lastfmRepository: lastfmRepository);
    MusicEntityDetailsCubit musicEntitiesCubit =
        MusicEntityDetailsCubit(musicRepository);

    setUp(() => musicEntitiesCubit = MusicEntityDetailsCubit(musicRepository));

    tearDown(() => musicEntitiesCubit.close());

    blocTest(
      'Fetching album details',
      build: () => musicEntitiesCubit,
      act: (MusicEntityDetailsCubit cubit) => cubit.getMusicEntityDetails(
          const MusicEntity(
              type: EntityType.album,
              title: 'title',
              titleKey: 'titleKey',
              imageUrl: 'imageUrl')),
      expect: () => [
        MusicEntityDetailsLoadingState(),
        MusicEntityDetailsLoadedState(
          MusicEntityDetails(
            const [
              Tag(name: 'post-hardcore', url: 'https://www.last.fm/tag/post-hardcore'),
              Tag(name: 'screamo', url: 'https://www.last.fm/tag/screamo'),
              Tag(name: 'experimental', url: 'https://www.last.fm/tag/experimental'),
              Tag(name: 'hardcore', url: 'https://www.last.fm/tag/hardcore'),
              Tag(name: 'post hardcore', url: 'https://www.last.fm/tag/post+hardcore'),
            ],
            EntityType.album,
            'Somewhere at the Bottom of the River Between Vega and Altair',
            EntityType.album.stringValue,
            'La Dispute',
            EntityType.artist.stringValue,
            'https://lastfm.freetls.fastly.net/i/u/300x300/e25ad3a369e547d989100a66e378e669.png',
            'https://www.last.fm/music/La+Dispute/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair',
          ),
        )
      ],
    );

    blocTest(
      'Fetching track details',
      build: () => musicEntitiesCubit,
      act: (MusicEntityDetailsCubit cubit) => cubit.getMusicEntityDetails(
          const MusicEntity(
              type: EntityType.track,
              title: 'title',
              titleKey: 'titleKey',
              imageUrl: 'imageUrl')),
      expect: () => [
        MusicEntityDetailsLoadingState(),
        MusicEntityDetailsLoadedState(
          MusicEntityDetails(
            const [
              Tag(name: 'rnb', url: 'https://www.last.fm/tag/rnb'),
              Tag(name: 'soul', url: 'https://www.last.fm/tag/soul'),
              Tag(name: 'Canadian', url: 'https://www.last.fm/tag/Canadian'),
              Tag(name: 'r&b', url: 'https://www.last.fm/tag/r&b'),
              Tag(name: '2018', url: 'https://www.last.fm/tag/2018')
            ],
            EntityType.track,
            'Call Out My Name',
            EntityType.track.stringValue,
            'The Weeknd',
            EntityType.artist.stringValue,
            '',
            'https://www.last.fm/music/The+Weeknd/_/Call+Out+My+Name',
          ),
        )
      ],
    );

    blocTest(
      'Fetching artist details',
      build: () => musicEntitiesCubit,
      act: (MusicEntityDetailsCubit cubit) => cubit.getMusicEntityDetails(
          const MusicEntity(
              type: EntityType.artist,
              title: 'title',
              titleKey: 'titleKey',
              imageUrl: 'imageUrl')),
      expect: () => [
        MusicEntityDetailsLoadingState(),
        MusicEntityDetailsLoadedState(
          MusicEntityDetails(
            const [
              Tag(name: 'rock', url: 'https://www.last.fm/tag/rock'),
              Tag(name: 'pop', url: 'https://www.last.fm/tag/pop'),
              Tag(name: '90s', url: 'https://www.last.fm/tag/90s'),
              Tag(name: 'alternative rock', url: 'https://www.last.fm/tag/alternative+rock'),
              Tag(name: 'alternative', url: 'https://www.last.fm/tag/alternative')
            ],
            EntityType.artist,
            'Deep Blue Something',
            EntityType.artist.stringValue,
            'Deep Blue Something is an American rock band...',
            'bio',
            'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png',
            'https://www.last.fm/music/Deep+Blue+Something',
          ),
        )
      ],
    );
  });
}
