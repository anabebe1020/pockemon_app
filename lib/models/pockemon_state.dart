import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/utils/translation.dart';

part 'pockemon_state.freezed.dart';

@freezed
class PockemonState with _$PockemonState {
  const factory PockemonState({
    String? id,
    String? number,
    String? name,
    String? minWeight,
    String? maxWeight,
    String? minHeight,
    String? maxHeight,
    String? classification,
    List<String?>? types,
    List<String?>? resistant,
    String? fastAttackName,
    String? fastAttackType,
    int? fastAttackDamage,
    String? specialAttackName,
    String? specialAttackType,
    int? specialAttackDamage,
    List<String?>? weaknesses,
    double? freeRate,
    int? maxCp,
    int? evolveAmount,
    String? evolveName,
    int? maxHp,
    String? image,
  }) = _PockemonState;

  factory PockemonState.fromJson(GetPockemons$Query$Pokemon? result) {
    final types = result?.types?.map((type) => typeEnToJp(type!)).toList();
    final resistant =
        result?.resistant?.map((resist) => typeEnToJp(resist!)).toList();
    final weaknesses =
        result?.weaknesses?.map((weakness) => typeEnToJp(weakness!)).toList();
    return PockemonState(
      id: result?.id,
      number: result?.number,
      name: nameEnToJp(result?.name ?? ''),
      minWeight: result?.weight?.minimum,
      maxWeight: result?.weight?.maximum,
      minHeight: result?.height?.minimum,
      maxHeight: result?.height?.maximum,
      types: types,
      resistant: resistant,
      fastAttackName: result?.attacks?.fast?[0]?.name,
      fastAttackType: result?.attacks?.fast?[0]?.type,
      fastAttackDamage: result?.attacks?.fast?[0]?.damage,
      specialAttackName: result?.attacks?.special?[0]?.name,
      specialAttackType: result?.attacks?.special?[0]?.type,
      specialAttackDamage: result?.attacks?.special?[0]?.damage,
      evolveAmount: result?.evolutionRequirements?.amount,
      evolveName: result?.evolutionRequirements?.name,
      weaknesses: weaknesses,
      freeRate: result?.fleeRate,
      maxCp: result?.maxCP,
      classification: result?.classification,
      maxHp: result?.maxHP,
      image: result?.image,
    );
  }
}
