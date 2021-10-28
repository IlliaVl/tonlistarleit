part of 'album_details_cubit.dart';

@immutable
abstract class AlbumDetailsState {}

class AlbumDetailsInitial extends AlbumDetailsState {}

class LoadingState extends AlbumDetailsState {}

class LoadedState extends AlbumDetailsState {
  LoadedState(this.albumDetails);

  final AlbumDetails albumDetails;
}

class ErrorState extends AlbumDetailsState {}
