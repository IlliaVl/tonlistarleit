import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tonlistarleit/common/music_entity_fetch_failure.dart';
import 'package:tonlistarleit/data/models/music_entity.dart';
import 'package:tonlistarleit/data/models/music_entity_details.dart';
import 'package:tonlistarleit/data/repositories/music_repository.dart';

part 'music_entity_details_state.dart';

class MusicEntityDetailsCubit extends Cubit<MusicEntityDetailsState> {
  MusicEntityDetailsCubit(this._musicRepository)
      : super(MusicEntityDetailsLoadingState());

  final MusicRepository _musicRepository;

  getMusicEntityDetails(MusicEntity musicEntity) async {
    try {
      emit(MusicEntityDetailsLoadingState());
      final musicEntityDetails =
          await _musicRepository.getMusicEntityDetails(musicEntity);
      emit(MusicEntityDetailsLoadedState(musicEntityDetails));
    } on MusicEntityFetchFailure catch (e, _) {
      emit(MusicEntityDetailsErrorState(e.message));
    }
  }
}
