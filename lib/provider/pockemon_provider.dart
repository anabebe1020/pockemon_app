import 'package:anabebe_packages/utils/log.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/infra/pockemon_client.dart';
import 'package:pockemon_app/models/pockemon_state.dart';
import 'package:pockemon_app/provider/filter_provider.dart';

final pLogger = Logger();

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
    pLogger.setup('pockemon');
    try {
      pLogger.log('init start');
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
    } finally {
      pLogger.log('init end');
    }
  }
}

// GraphQL query
final _getPockemonsProvider = FutureProvider<List<PockemonState>>((ref) async {
  try {
    pLogger.log('_getPockemonsProvider start');
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
  } finally {
    pLogger.log('_getPockemonsProvider end');
  }
});
