import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/infra/graphql_client.dart';
import 'package:pockemon_app/models/pockemon.dart';

final modalTitleProvider = StateProvider((ref) => 'showModalBottomSheet');

const _baseUrl = 'https://graphql-pokemon2.vercel.app';

GQClient? pockemonServerClient;

final initGqlProvider = StateProvider((ref) {
  pockemonServerClient = GQClient();
  pockemonServerClient!.setup(_baseUrl);
});

final getPockemonsProvider = FutureProvider<List<PockemonModel>>((ref) async {
  try {
    print('getPockemons');
    final query = GetPockemonsQuery();
    final json = await pockemonServerClient!
        .query(QueryOptions(document: query.document));
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

final getPockemonTypeProvider = FutureProvider<List<FilterModel>>((ref) {
  return ref.watch(filterProvider);
});

final filterProvider =
    StateNotifierProvider<_FilterNotifier, List<FilterModel>>(
  (ref) => _FilterNotifier(),
);

class _FilterNotifier extends StateNotifier<List<FilterModel>> {
  _FilterNotifier() : super([]);

  Future<void> getPockemonTypes() async {
    print('getPockemonTypes');
    try {
      final query = GetPockemonTypesQuery();
      final json = await pockemonServerClient!
          .query(QueryOptions(document: query.document));
      final result = GetPockemonTypes$Query.fromJson(json);
      final pockemons = result.pokemons;
      List<String> typeList = [];
      if (pockemons != null) {
        for (var pockemon in pockemons) {
          if (pockemon != null) {
            final types = pockemon.types;
            if (types != null) {
              for (String? type in types) {
                if (type != null) {
                  typeList.add(type);
                }
              }
            }
          }
        }
      }
      typeList = typeList.toSet().toList();
      state = typeList.map((type) => FilterModel(label: type)).toList();
    } catch (e) {}
  }

  void onPressBox(int index, bool? value) {
    print(value);
    if (value != null) {
      state[index].isCheck = value;
    }
  }
}
