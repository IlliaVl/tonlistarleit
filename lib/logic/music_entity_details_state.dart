part of 'music_entity_details_cubit.dart';

@immutable
abstract class MusicEntityDetailsState {}

class MusicEntityDetailsInitial extends MusicEntityDetailsState {}

class MusicEntityDetailsLoadingState extends MusicEntityDetailsState {}

class MusicEntityDetailsLoadedState extends MusicEntityDetailsState {
  MusicEntityDetailsLoadedState(this.musicEntityDetails);

  final MusicEntityDetails musicEntityDetails;
}

class MusicEntityDetailsErrorState extends MusicEntityDetailsState {}
