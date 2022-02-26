// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin PokemonFieldMixin {
  late String id;
  String? name;
  String? image;
  List<String?>? types;
}

@JsonSerializable(explicitToJson: true)
class GetPockemons$Query$Pokemon extends JsonSerializable
    with EquatableMixin, PokemonFieldMixin {
  GetPockemons$Query$Pokemon();

  factory GetPockemons$Query$Pokemon.fromJson(Map<String, dynamic> json) =>
      _$GetPockemons$Query$PokemonFromJson(json);

  @override
  List<Object?> get props => [id, name, image, types];
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
                  value: IntValueNode(value: '100'))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'pokemonField'), directives: [])
            ]))
      ])),
  FragmentDefinitionNode(
      name: NameNode(value: 'pokemonField'),
      typeCondition: TypeConditionNode(
          on: NamedTypeNode(
              name: NameNode(value: 'Pokemon'), isNonNull: false)),
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'id'),
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
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: 'types'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
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
