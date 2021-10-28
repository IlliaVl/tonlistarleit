part of 'music_cubit.dart';

@immutable
abstract class MusicState {}

class MusicInitial extends MusicState {}

class LoadingState extends MusicState {}

class LoadedState extends MusicState {
  LoadedState(this.musicList);

  final List<Album> musicList;
}

class ErrorState extends MusicState {}
