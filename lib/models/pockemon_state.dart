import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pockemon_app/infra/graphql/api.dart';

part 'pockemon_state.freezed.dart';

@freezed
class PockemonState with _$PockemonState {
  const factory PockemonState({
    String? id,
    String? name,
    String? image,
    List<String?>? types,
  }) = _PockemonState;

  factory PockemonState.fromJson(GetPockemons$Query$Pokemon? result) {
    return PockemonState(
      id: result?.id ?? '',
      name: result?.name ?? '',
      image: result?.image ?? '',
      types: result?.types ?? [],
    );
  }
}
