// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPockemons$Query$Pokemon$PokemonDimension
    _$GetPockemons$Query$Pokemon$PokemonDimensionFromJson(
            Map<String, dynamic> json) =>
        GetPockemons$Query$Pokemon$PokemonDimension()
          ..minimum = json['minimum'] as String?
          ..maximum = json['maximum'] as String?;

Map<String, dynamic> _$GetPockemons$Query$Pokemon$PokemonDimensionToJson(
        GetPockemons$Query$Pokemon$PokemonDimension instance) =>
    <String, dynamic>{
      'minimum': instance.minimum,
      'maximum': instance.maximum,
    };

GetPockemons$Query$Pokemon$PokemonAttack$Attack
    _$GetPockemons$Query$Pokemon$PokemonAttack$AttackFromJson(
            Map<String, dynamic> json) =>
        GetPockemons$Query$Pokemon$PokemonAttack$Attack()
          ..name = json['name'] as String?
          ..type = json['type'] as String?
          ..damage = json['damage'] as int?;

Map<String, dynamic> _$GetPockemons$Query$Pokemon$PokemonAttack$AttackToJson(
        GetPockemons$Query$Pokemon$PokemonAttack$Attack instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'damage': instance.damage,
    };

GetPockemons$Query$Pokemon$PokemonAttack
    _$GetPockemons$Query$Pokemon$PokemonAttackFromJson(
            Map<String, dynamic> json) =>
        GetPockemons$Query$Pokemon$PokemonAttack()
          ..fast = (json['fast'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : GetPockemons$Query$Pokemon$PokemonAttack$Attack.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..special = (json['special'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : GetPockemons$Query$Pokemon$PokemonAttack$Attack.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetPockemons$Query$Pokemon$PokemonAttackToJson(
        GetPockemons$Query$Pokemon$PokemonAttack instance) =>
    <String, dynamic>{
      'fast': instance.fast?.map((e) => e?.toJson()).toList(),
      'special': instance.special?.map((e) => e?.toJson()).toList(),
    };

GetPockemons$Query$Pokemon$PokemonEvolutionRequirement
    _$GetPockemons$Query$Pokemon$PokemonEvolutionRequirementFromJson(
            Map<String, dynamic> json) =>
        GetPockemons$Query$Pokemon$PokemonEvolutionRequirement()
          ..amount = json['amount'] as int?
          ..name = json['name'] as String?;

Map<String, dynamic>
    _$GetPockemons$Query$Pokemon$PokemonEvolutionRequirementToJson(
            GetPockemons$Query$Pokemon$PokemonEvolutionRequirement instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'name': instance.name,
        };

GetPockemons$Query$Pokemon _$GetPockemons$Query$PokemonFromJson(
        Map<String, dynamic> json) =>
    GetPockemons$Query$Pokemon()
      ..id = json['id'] as String
      ..number = json['number'] as String?
      ..name = json['name'] as String?
      ..weight = json['weight'] == null
          ? null
          : GetPockemons$Query$Pokemon$PokemonDimension.fromJson(
              json['weight'] as Map<String, dynamic>)
      ..height = json['height'] == null
          ? null
          : GetPockemons$Query$Pokemon$PokemonDimension.fromJson(
              json['height'] as Map<String, dynamic>)
      ..classification = json['classification'] as String?
      ..types =
          (json['types'] as List<dynamic>?)?.map((e) => e as String?).toList()
      ..resistant = (json['resistant'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList()
      ..attacks = json['attacks'] == null
          ? null
          : GetPockemons$Query$Pokemon$PokemonAttack.fromJson(
              json['attacks'] as Map<String, dynamic>)
      ..weaknesses = (json['weaknesses'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList()
      ..fleeRate = (json['fleeRate'] as num?)?.toDouble()
      ..maxCP = json['maxCP'] as int?
      ..evolutionRequirements = json['evolutionRequirements'] == null
          ? null
          : GetPockemons$Query$Pokemon$PokemonEvolutionRequirement.fromJson(
              json['evolutionRequirements'] as Map<String, dynamic>)
      ..maxHP = json['maxHP'] as int?
      ..image = json['image'] as String?;

Map<String, dynamic> _$GetPockemons$Query$PokemonToJson(
        GetPockemons$Query$Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'name': instance.name,
      'weight': instance.weight?.toJson(),
      'height': instance.height?.toJson(),
      'classification': instance.classification,
      'types': instance.types,
      'resistant': instance.resistant,
      'attacks': instance.attacks?.toJson(),
      'weaknesses': instance.weaknesses,
      'fleeRate': instance.fleeRate,
      'maxCP': instance.maxCP,
      'evolutionRequirements': instance.evolutionRequirements?.toJson(),
      'maxHP': instance.maxHP,
      'image': instance.image,
    };

GetPockemons$Query _$GetPockemons$QueryFromJson(Map<String, dynamic> json) =>
    GetPockemons$Query()
      ..pokemons = (json['pokemons'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GetPockemons$Query$Pokemon.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetPockemons$QueryToJson(GetPockemons$Query instance) =>
    <String, dynamic>{
      'pokemons': instance.pokemons?.map((e) => e?.toJson()).toList(),
    };

GetPockemonTypes$Query$Pokemon _$GetPockemonTypes$Query$PokemonFromJson(
        Map<String, dynamic> json) =>
    GetPockemonTypes$Query$Pokemon()
      ..types =
          (json['types'] as List<dynamic>?)?.map((e) => e as String?).toList();

Map<String, dynamic> _$GetPockemonTypes$Query$PokemonToJson(
        GetPockemonTypes$Query$Pokemon instance) =>
    <String, dynamic>{
      'types': instance.types,
    };

GetPockemonTypes$Query _$GetPockemonTypes$QueryFromJson(
        Map<String, dynamic> json) =>
    GetPockemonTypes$Query()
      ..pokemons = (json['pokemons'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GetPockemonTypes$Query$Pokemon.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetPockemonTypes$QueryToJson(
        GetPockemonTypes$Query instance) =>
    <String, dynamic>{
      'pokemons': instance.pokemons?.map((e) => e?.toJson()).toList(),
    };
