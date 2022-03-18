// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetPockemons$Query$Pokemon$PokemonDimension extends JsonSerializable
    with EquatableMixin {
  GetPockemons$Query$Pokemon$PokemonDimension();

  factory GetPockemons$Query$Pokemon$PokemonDimension.fromJson(
          Map<String, dynamic> json) =>
      _$GetPockemons$Query$Pokemon$PokemonDimensionFromJson(json);

  String? minimum;

  String? maximum;

  @override
  List<Object?> get props => [minimum, maximum];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPockemons$Query$Pokemon$PokemonDimensionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPockemons$Query$Pokemon$PokemonAttack$Attack extends JsonSerializable
    with EquatableMixin {
  GetPockemons$Query$Pokemon$PokemonAttack$Attack();

  factory GetPockemons$Query$Pokemon$PokemonAttack$Attack.fromJson(
          Map<String, dynamic> json) =>
      _$GetPockemons$Query$Pokemon$PokemonAttack$AttackFromJson(json);

  String? name;

  String? type;

  int? damage;

  @override
  List<Object?> get props => [name, type, damage];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPockemons$Query$Pokemon$PokemonAttack$AttackToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPockemons$Query$Pokemon$PokemonAttack extends JsonSerializable
    with EquatableMixin {
  GetPockemons$Query$Pokemon$PokemonAttack();

  factory GetPockemons$Query$Pokemon$PokemonAttack.fromJson(
          Map<String, dynamic> json) =>
      _$GetPockemons$Query$Pokemon$PokemonAttackFromJson(json);

  List<GetPockemons$Query$Pokemon$PokemonAttack$Attack?>? fast;

  List<GetPockemons$Query$Pokemon$PokemonAttack$Attack?>? special;

  @override
  List<Object?> get props => [fast, special];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPockemons$Query$Pokemon$PokemonAttackToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPockemons$Query$Pokemon$PokemonEvolutionRequirement
    extends JsonSerializable with EquatableMixin {
  GetPockemons$Query$Pokemon$PokemonEvolutionRequirement();

  factory GetPockemons$Query$Pokemon$PokemonEvolutionRequirement.fromJson(
          Map<String, dynamic> json) =>
      _$GetPockemons$Query$Pokemon$PokemonEvolutionRequirementFromJson(json);

  int? amount;

  String? name;

  @override
  List<Object?> get props => [amount, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPockemons$Query$Pokemon$PokemonEvolutionRequirementToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPockemons$Query$Pokemon extends JsonSerializable with EquatableMixin {
  GetPockemons$Query$Pokemon();

  factory GetPockemons$Query$Pokemon.fromJson(Map<String, dynamic> json) =>
      _$GetPockemons$Query$PokemonFromJson(json);

  late String id;

  String? number;

  String? name;

  GetPockemons$Query$Pokemon$PokemonDimension? weight;

  GetPockemons$Query$Pokemon$PokemonDimension? height;

  String? classification;

  List<String?>? types;

  List<String?>? resistant;

  GetPockemons$Query$Pokemon$PokemonAttack? attacks;

  List<String?>? weaknesses;

  double? fleeRate;

  int? maxCP;

  GetPockemons$Query$Pokemon$PokemonEvolutionRequirement? evolutionRequirements;

  int? maxHP;

  String? image;

  @override
  List<Object?> get props => [
        id,
        number,
        name,
        weight,
        height,
        classification,
        types,
        resistant,
        attacks,
        weaknesses,
        fleeRate,
        maxCP,
        evolutionRequirements,
        maxHP,
        image
      ];
  @override
  Map<String, dynamic> toJson() => _$GetPockemons$Query$PokemonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPockemons$Query extends JsonSerializable with EquatableMixin {
  GetPockemons$Query();

  factory GetPockemons$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPockemons$QueryFromJson(json);

  List<GetPockemons$Query$Pokemon?>? pokemons;

  @override
  List<Object?> get props => [pokemons];
  @override
  Map<String, dynamic> toJson() => _$GetPockemons$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPockemonTypes$Query$Pokemon extends JsonSerializable
    with EquatableMixin {
  GetPockemonTypes$Query$Pokemon();

  factory GetPockemonTypes$Query$Pokemon.fromJson(Map<String, dynamic> json) =>
      _$GetPockemonTypes$Query$PokemonFromJson(json);

  List<String?>? types;

  @override
  List<Object?> get props => [types];
  @override
  Map<String, dynamic> toJson() => _$GetPockemonTypes$Query$PokemonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPockemonTypes$Query extends JsonSerializable with EquatableMixin {
  GetPockemonTypes$Query();

  factory GetPockemonTypes$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPockemonTypes$QueryFromJson(json);

  List<GetPockemonTypes$Query$Pokemon?>? pokemons;

  @override
  List<Object?> get props => [pokemons];
  @override
  Map<String, dynamic> toJson() => _$GetPockemonTypes$QueryToJson(this);
}

final GET_POCKEMONS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPockemons'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'pokemons'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: IntValueNode(value: '300'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'number'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'weight'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'minimum'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'maximum'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'height'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'minimum'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'maximum'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'classification'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'types'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'resistant'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'attacks'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'fast'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'type'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'damage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'special'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'type'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'damage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'weaknesses'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'fleeRate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'maxCP'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'evolutionRequirements'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'amount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'maxHP'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'image'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetPockemonsQuery
    extends GraphQLQuery<GetPockemons$Query, JsonSerializable> {
  GetPockemonsQuery();

  @override
  final DocumentNode document = GET_POCKEMONS_QUERY_DOCUMENT;

  @override
  final String operationName = 'getPockemons';

  @override
  List<Object?> get props => [document, operationName];
  @override
  GetPockemons$Query parse(Map<String, dynamic> json) =>
      GetPockemons$Query.fromJson(json);
}

final GET_POCKEMON_TYPES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPockemonTypes'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'pokemons'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: IntValueNode(value: '100'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'types'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class GetPockemonTypesQuery
    extends GraphQLQuery<GetPockemonTypes$Query, JsonSerializable> {
  GetPockemonTypesQuery();

  @override
  final DocumentNode document = GET_POCKEMON_TYPES_QUERY_DOCUMENT;

  @override
  final String operationName = 'getPockemonTypes';

  @override
  List<Object?> get props => [document, operationName];
  @override
  GetPockemonTypes$Query parse(Map<String, dynamic> json) =>
      GetPockemonTypes$Query.fromJson(json);
}
