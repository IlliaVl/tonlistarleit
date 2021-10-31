part of 'music_entity_details_cubit.dart';

@immutable
abstract class MusicEntityDetailsState extends Equatable {}

class MusicEntityDetailsInitial extends MusicEntityDetailsState {
  @override
  List<Object?> get props => [];
}

class MusicEntityDetailsLoadingState extends MusicEntityDetailsState {
  @override
  List<Object?> get props => [];
}

class MusicEntityDetailsLoadedState extends MusicEntityDetailsState {
  MusicEntityDetailsLoadedState(this.musicEntityDetails);

  final MusicEntityDetails musicEntityDetails;

  @override
  List<Object?> get props => [musicEntityDetails];
}

class MusicEntityDetailsErrorState extends MusicEntityDetailsState {
  final String message;

  MusicEntityDetailsErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
