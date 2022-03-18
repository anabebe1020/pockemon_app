// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPockemons$Query$Pokemon _$GetPockemons$Query$PokemonFromJson(
        Map<String, dynamic> json) =>
    GetPockemons$Query$Pokemon()
      ..id = json['id'] as String
      ..number = json['number'] as String?
      ..name = json['name'] as String?
      ..weight = json['weight'] == null
          ? null
          : PokemonFieldMixin$PokemonDimension.fromJson(
              json['weight'] as Map<String, dynamic>)
      ..height = json['height'] == null
          ? null
          : PokemonFieldMixin$PokemonDimension.fromJson(
              json['height'] as Map<String, dynamic>)
      ..classification = json['classification'] as String?
      ..types =
          (json['types'] as List<dynamic>?)?.map((e) => e as String?).toList()
      ..resistant = (json['resistant'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList()
      ..attacks = json['attacks'] == null
          ? null
          : PokemonFieldMixin$PokemonAttack.fromJson(
              json['attacks'] as Map<String, dynamic>)
      ..weaknesses = (json['weaknesses'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList()
      ..fleeRate = (json['fleeRate'] as num?)?.toDouble()
      ..maxCP = json['maxCP'] as int?
      ..evolutionRequirements = json['evolutionRequirements'] == null
          ? null
          : PokemonFieldMixin$PokemonEvolutionRequirement.fromJson(
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

PokemonFieldMixin$PokemonDimension _$PokemonFieldMixin$PokemonDimensionFromJson(
        Map<String, dynamic> json) =>
    PokemonFieldMixin$PokemonDimension()
      ..minimum = json['minimum'] as String?
      ..maximum = json['maximum'] as String?;

Map<String, dynamic> _$PokemonFieldMixin$PokemonDimensionToJson(
        PokemonFieldMixin$PokemonDimension instance) =>
    <String, dynamic>{
      'minimum': instance.minimum,
      'maximum': instance.maximum,
    };

PokemonFieldMixin$PokemonAttack$Attack
    _$PokemonFieldMixin$PokemonAttack$AttackFromJson(
            Map<String, dynamic> json) =>
        PokemonFieldMixin$PokemonAttack$Attack()
          ..name = json['name'] as String?
          ..type = json['type'] as String?
          ..damage = json['damage'] as int?;

Map<String, dynamic> _$PokemonFieldMixin$PokemonAttack$AttackToJson(
        PokemonFieldMixin$PokemonAttack$Attack instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'damage': instance.damage,
    };

PokemonFieldMixin$PokemonAttack _$PokemonFieldMixin$PokemonAttackFromJson(
        Map<String, dynamic> json) =>
    PokemonFieldMixin$PokemonAttack()
      ..fast = (json['fast'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PokemonFieldMixin$PokemonAttack$Attack.fromJson(
                  e as Map<String, dynamic>))
          .toList()
      ..special = (json['special'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PokemonFieldMixin$PokemonAttack$Attack.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PokemonFieldMixin$PokemonAttackToJson(
        PokemonFieldMixin$PokemonAttack instance) =>
    <String, dynamic>{
      'fast': instance.fast?.map((e) => e?.toJson()).toList(),
      'special': instance.special?.map((e) => e?.toJson()).toList(),
    };

PokemonFieldMixin$PokemonEvolutionRequirement
    _$PokemonFieldMixin$PokemonEvolutionRequirementFromJson(
            Map<String, dynamic> json) =>
        PokemonFieldMixin$PokemonEvolutionRequirement()
          ..amount = json['amount'] as int?
          ..name = json['name'] as String?;

Map<String, dynamic> _$PokemonFieldMixin$PokemonEvolutionRequirementToJson(
        PokemonFieldMixin$PokemonEvolutionRequirement instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'name': instance.name,
    };

GetPockemonTypes$Query$Pokemon _$GetPockemonTypes$Query$PokemonFromJson(
        Map<String, dynamic> json) =>
    GetPockemonTypes$Query$Pokemon()
      ..id = json['id'] as String
      ..number = json['number'] as String?
      ..name = json['name'] as String?
      ..weight = json['weight'] == null
          ? null
          : PokemonFieldMixin$PokemonDimension.fromJson(
              json['weight'] as Map<String, dynamic>)
      ..height = json['height'] == null
          ? null
          : PokemonFieldMixin$PokemonDimension.fromJson(
              json['height'] as Map<String, dynamic>)
      ..classification = json['classification'] as String?
      ..types =
          (json['types'] as List<dynamic>?)?.map((e) => e as String?).toList()
      ..resistant = (json['resistant'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList()
      ..attacks = json['attacks'] == null
          ? null
          : PokemonFieldMixin$PokemonAttack.fromJson(
              json['attacks'] as Map<String, dynamic>)
      ..weaknesses = (json['weaknesses'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList()
      ..fleeRate = (json['fleeRate'] as num?)?.toDouble()
      ..maxCP = json['maxCP'] as int?
      ..evolutionRequirements = json['evolutionRequirements'] == null
          ? null
          : PokemonFieldMixin$PokemonEvolutionRequirement.fromJson(
              json['evolutionRequirements'] as Map<String, dynamic>)
      ..maxHP = json['maxHP'] as int?
      ..image = json['image'] as String?;

Map<String, dynamic> _$GetPockemonTypes$Query$PokemonToJson(
        GetPockemonTypes$Query$Pokemon instance) =>
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
