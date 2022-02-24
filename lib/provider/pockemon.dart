import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/infra/graphql_client.dart';
import 'package:pockemon_app/models/pockemon.dart';

final modalTitleProvider = StateProvider((ref) => 'showModalBottomSheet');

const _baseUrl = 'https://graphql-pokemon2.vercel.app';

final getPockemonsProvider = FutureProvider<List<PockemonModel>>((ref) async {
  final query = GetPockemonsQuery();
  GQClient().setup(_baseUrl);
  final json = await GQClient().query(QueryOptions(document: query.document));
  final result = GetPockemons$Query.fromJson(json);
  final pockemons = result.pokemons
      ?.map((pockemon) => PockemonModel.fromJson(pockemon))
      .toList();
  return pockemons ?? [];
});
