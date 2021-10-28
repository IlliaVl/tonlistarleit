import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tonlistarleit/data/models/album.dart';
import 'package:tonlistarleit/data/models/album_details.dart';
import 'package:tonlistarleit/data/repositories/music_repository.dart';

part 'album_details_state.dart';

class AlbumDetailsCubit extends Cubit<AlbumDetailsState> {
  AlbumDetailsCubit(this._musicRepository) : super(LoadingState());

  final MusicRepository _musicRepository;

  getAlbumDetails(Album album) async {
    try {
      emit(LoadingState());
      final albums = await _musicRepository.getAlbumDetails(album);
      emit(LoadedState(albums));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
