import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
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
    } catch (e) {
      emit(MusicEntityDetailsErrorState());
    }
  }
}
