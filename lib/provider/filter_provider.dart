import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/infra/pockemon_client.dart';
import 'package:pockemon_app/models/filter_state.dart';

// to View
final filterProvider = StateNotifierProvider<_FilterNotifier, FilterState>(
  (ref) => _FilterNotifier(ref),
);

// ViewModel
class _FilterNotifier extends StateNotifier<FilterState> {
  final StateNotifierProviderRef ref;
  _FilterNotifier(this.ref) : super(const FilterState());

  Future<void> init() async {
    try {
      if (state.isAllChecked != null) return;
      final value = ref.watch(_getPockemonTypesProvider).value;
      state = value ?? const FilterState();
    } catch (e) {
      rethrow;
    }
  }

  void onPressAll(bool? value) {
    final boxes = state.checkboxes != null
        ? state.checkboxes!
            .map((box) => CheckBoxModel(label: box.label, isCheck: value!))
            .toList()
        : null;
    state = state.copyWith(isAllChecked: value, checkboxes: boxes);
    state = state.copyWith(isAllChecked: value);
  }

  void onPressBox(String label, bool? value) {
    final checkboxes = state.checkboxes;
    if (checkboxes != null) {
      for (final checkbox in checkboxes) {
        checkbox.label == label ? checkbox.isCheck = value! : null;
      }
    }
    state = state.copyWith(checkboxes: checkboxes);
  }
}

// GraphQL query
final _getPockemonTypesProvider = FutureProvider<FilterState>((ref) async {
  print('_getPockemonTypesProvider');
  try {
    final query = GetPockemonTypesQuery();
    final json = await pockemonServerClient!
        .query(QueryOptions(document: query.document));
    final result = GetPockemonTypes$Query.fromJson(json);
    final pockemons = FilterState.fromJson(result.pokemons);
    return pockemons;
  } catch (e) {
    return const FilterState(isAllChecked: true);
  }
});
