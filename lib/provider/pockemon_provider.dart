import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/infra/pockemon_client.dart';
import 'package:pockemon_app/models/pockemon_state.dart';
import 'package:pockemon_app/provider/filter_provider.dart';

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
    try {
      final value = ref.watch(_getPockemonsProvider).value;
      //
      if (value == null) {
        state = [];
        return;
      }
      // no filter
      final filter = ref.watch(filterProvider);
      final isAllChecked = filter.isAllChecked;
      final checkboxes = filter.checkboxes;
      if (isAllChecked == null || checkboxes == null) {
        state = value;
        return;
      }
      // filter
      List<PockemonState> filtered = [];
      for (final pockemon in value) {
        for (final box in checkboxes) {
          final types = pockemon.types;
          if (types == null) break;
          for (final type in types) {
            box.isCheck && box.label == type ? filtered.add(pockemon) : null;
          }
        }
      }
      state = filtered.toSet().toList();
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
