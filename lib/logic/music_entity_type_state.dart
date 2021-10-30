part of 'music_entity_type_cubit.dart';

class MusicEntityTypeState extends Equatable {
  final EntityType entityType;

  const MusicEntityTypeState({required this.entityType});

  @override
  List<Object?> get props => [entityType];
}
