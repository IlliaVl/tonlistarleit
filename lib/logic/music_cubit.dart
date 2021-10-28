import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tonlistarleit/data/models/album.dart';
import 'package:tonlistarleit/data/repositories/music_repository.dart';

part 'music_state.dart';

class MusicCubit extends Cubit<MusicState> {
  MusicCubit(this._musicRepository) : super(MusicInitial());

  final MusicRepository _musicRepository;

  fetchMusic(String name) async {
    try {
      emit(LoadingState());
      final albums = await _musicRepository.getAlbums(name);
      emit(LoadedState(albums));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
