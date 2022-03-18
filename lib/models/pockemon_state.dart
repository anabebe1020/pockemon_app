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
    String? classification,
    List<String?>? resistant,
    List<String?>? weaknesses,
    int? evolveAmount,
    String? evolveName,
    //evolutionRequirements { 進化
    //     amount　飴
    //     name
    //   }
  }) = _PockemonState;

  factory PockemonState.fromJson(GetPockemons$Query$Pokemon? result) {
    return PockemonState(
      id: result?.id,
      name: result?.name,
      image: result?.image,
      types: result?.types,
      resistant: result?.resistant,
      evolveAmount: result?.evolutionRequirements?.amount,
      evolveName: result?.evolutionRequirements?.name,
      weaknesses: result?.weaknesses,
      classification: result?.classification,
    );
  }
}
