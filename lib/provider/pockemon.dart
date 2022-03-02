import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/infra/graphql_client.dart';
import 'package:pockemon_app/models/pockemon.dart';

final modalTitleProvider = StateProvider((ref) => 'showModalBottomSheet');

const _baseUrl = 'https://graphql-pokemon2.vercel.app';

final getPockemonsProvider = FutureProvider<List<PockemonModel>>((ref) async {
  try {
    GQClient().setup(_baseUrl);
    final query = GetPockemonsQuery();
    final json = await GQClient().query(QueryOptions(document: query.document));
    final result = GetPockemons$Query.fromJson(json);
    final pockemons = result.pokemons
        ?.map((pockemon) => PockemonModel.fromJson(pockemon))
        .toList();
    return pockemons ?? [];
  } catch (e, m) {
    print(m.toString());
    return [];
  }
});

final getPockemonTypesProvider = FutureProvider<List<String?>>((ref) async {
  try {
    GQClient().setup(_baseUrl);
    final query = GetPockemonTypesQuery();
    final json = await GQClient().query(QueryOptions(document: query.document));
    final result = GetPockemonTypes$Query.fromJson(json);
    final pockemons = result.pokemons;
    List<String?> types = [];
    if (pockemons != null) {
      for (var pockemon in pockemons) {
        types.addAll(pockemon?.types ?? []);
      }
    }
    return types.toSet().toList();
  } catch (e, m) {
    print(m.toString());
    return [];
  }
});
