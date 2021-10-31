import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/common/music_entity_fetch_failure.dart';
import 'package:tonlistarleit/data/models/music_entity.dart';
import 'package:tonlistarleit/data/repositories/music_repository.dart';

part 'music_entities_state.dart';

class MusicEntitiesCubit extends Cubit<MusicEntitiesState> {
  MusicEntitiesCubit(this._musicRepository) : super(MusicEntitiesInitialState());

  final MusicRepository _musicRepository;

  fetchMusicEntities(
    String searchString,
    EntityType entityType,
  ) async {
    try {
      emit(MusicEntitiesLoadingState());
      final musicEntities = await _musicRepository.getMusicEntities(
        searchString,
        entityType,
      );
      emit(MusicEntitiesLoadedState(musicEntities));
    } on MusicEntityFetchFailure catch (e, __) {
      emit(MusicEntitiesErrorState(e.message));
    }
  }
}
