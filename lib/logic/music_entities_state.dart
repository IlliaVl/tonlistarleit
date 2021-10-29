part of 'music_entities_cubit.dart';

@immutable
abstract class MusicEntitiesState {}

class MusicEntitiesInitialState extends MusicEntitiesState {}

class MusicEntitiesLoadingState extends MusicEntitiesState {}

class MusicEntitiesLoadedState extends MusicEntitiesState {
  MusicEntitiesLoadedState(this.musicEntitiesList);

  final List<MusicEntity> musicEntitiesList;
}

class MusicEntitiesErrorState extends MusicEntitiesState {}
