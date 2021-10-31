part of 'music_entities_cubit.dart';

@immutable
abstract class MusicEntitiesState extends Equatable {}

class MusicEntitiesInitialState extends MusicEntitiesState {
  @override
  List<Object?> get props => [];
}

class MusicEntitiesLoadingState extends MusicEntitiesState {
  @override
  List<Object?> get props => [];
}

class MusicEntitiesLoadedState extends MusicEntitiesState {
  MusicEntitiesLoadedState(this.musicEntitiesList);

  final List<MusicEntity> musicEntitiesList;

  @override
  List<Object?> get props => [musicEntitiesList];
}

class MusicEntitiesErrorState extends MusicEntitiesState {
  final String message;

  MusicEntitiesErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
