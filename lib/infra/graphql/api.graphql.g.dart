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
      ..name = json['name'] as String?
      ..image = json['image'] as String?
      ..types =
          (json['types'] as List<dynamic>?)?.map((e) => e as String?).toList();

Map<String, dynamic> _$GetPockemons$Query$PokemonToJson(
        GetPockemons$Query$Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'types': instance.types,
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
