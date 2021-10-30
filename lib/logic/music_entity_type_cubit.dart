import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tonlistarleit/common/enums.dart';

part 'music_entity_type_state.dart';

class MusicEntityTypeCubit extends Cubit<MusicEntityTypeState> {
  MusicEntityTypeCubit()
      : super(MusicEntityTypeState(entityType: EntityType.album));

  changeMusicEntityType(EntityType? entityType) =>
      emit(MusicEntityTypeState(entityType: entityType ?? EntityType.album));
}
