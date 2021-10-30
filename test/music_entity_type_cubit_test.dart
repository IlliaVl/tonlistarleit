import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';
import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/logic/music_entity_type_cubit.dart';

main() {
  group('MusicEntityTypeCubit', () {
    MusicEntityTypeCubit musicEntityTypeCubit = MusicEntityTypeCubit();

    setUp(() => musicEntityTypeCubit = MusicEntityTypeCubit());
    tearDown(() => musicEntityTypeCubit.close());

    test(
      'Initial state is EntityType.album',
      () => expect(
        musicEntityTypeCubit.state,
        const MusicEntityTypeState(entityType: EntityType.album),
      ),
    );

    blocTest(
      'Changing EntityType.album to EntityType.artist',
      build: () => musicEntityTypeCubit,
      act: (MusicEntityTypeCubit cubit) =>
          cubit.changeMusicEntityType(EntityType.artist),
      expect: () => [const MusicEntityTypeState(entityType: EntityType.artist)],
    );
  });
}
