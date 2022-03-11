import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/infra/graphql_client.dart';
import 'package:pockemon_app/models/pockemon_state.dart';

final modalTitleProvider = StateProvider((ref) => 'showModalBottomSheet');

const _baseUrl = 'https://graphql-pokemon2.vercel.app';

GQClient? pockemonServerClient;

final initGqlProvider = StateProvider((ref) {
  pockemonServerClient = GQClient();
  pockemonServerClient!.setup(_baseUrl);
});

final getPockemonsProvider = FutureProvider<List<PockemonState>>((ref) async {
  try {
    final query = GetPockemonsQuery();
    final json = await pockemonServerClient!
        .query(QueryOptions(document: query.document));
    final result = GetPockemons$Query.fromJson(json);
    final pockemons = result.pokemons
        ?.map((pockemon) => PockemonState.fromJson(pockemon))
        .toList();
    return pockemons ?? [];
  } catch (e, m) {
    return [];
  }
});

final filterProvider =
    StateNotifierProvider<_FilterNotifier, List<FilterState>>(
  (ref) => _FilterNotifier(),
);

class _FilterNotifier extends StateNotifier<List<FilterState>> {
  _FilterNotifier() : super([]);

  Future<void> getPockemonTypes() async {
    print('getPockemonTypes');
    try {
      final query = GetPockemonTypesQuery();
      final json = await pockemonServerClient!
          .query(QueryOptions(document: query.document));
      final result = GetPockemonTypes$Query.fromJson(json);
      final pockemons = result.pokemons;
      List<String> typeList = ['All'];
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
      state = typeList
          .map((type) => FilterState(label: type, isCheck: true))
          .toList();
    } catch (e) {}
  }

  void onPressBox(int index, bool? value) {
    if (state[index].label == 'All') {
      state = state.map((filter) => filter.copyWith(isCheck: value)).toList();
    } else {
      state[index] = state[index].copyWith(isCheck: value);
    }
  }
}
