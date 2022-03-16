import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/infra/pockemon_client.dart';
import 'package:pockemon_app/models/pockemon_state.dart';

// to View
final pockemonProvider =
    StateNotifierProvider<_PockemonNotifier, List<PockemonState>>(
  (ref) => _PockemonNotifier(ref),
);

// ViewModel
class _PockemonNotifier extends StateNotifier<List<PockemonState>> {
  final StateNotifierProviderRef ref;
  _PockemonNotifier(this.ref) : super([]);

  Future<void> init() async {
    print('_PockemonNotifier init');
    try {
      final pockemons = ref.read(_getPockemonsProvider);
      final value = pockemons.value;
      state = value ?? [];
    } catch (e) {
      rethrow;
    }
  }
}

// GraphQL query
final _getPockemonsProvider = FutureProvider<List<PockemonState>>((ref) async {
  try {
    final query = GetPockemonsQuery();
    final json = await pockemonServerClient!
        .query(QueryOptions(document: query.document));
    final result = GetPockemons$Query.fromJson(json);
    final pockemons = result.pokemons
        ?.map((pockemon) => PockemonState.fromJson(pockemon))
        .toList();
    return pockemons ?? [];
  } catch (e) {
    return [];
  }
});
