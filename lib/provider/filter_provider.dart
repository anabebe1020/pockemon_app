import 'package:anabebe_packages/utils/log.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/infra/pockemon_client.dart';
import 'package:pockemon_app/models/filter_state.dart';

final fLogger = Logger();

// to View
final filterProvider = StateNotifierProvider<_FilterNotifier, FilterState>(
  (ref) => _FilterNotifier(ref),
);

// ViewModel
class _FilterNotifier extends StateNotifier<FilterState> {
  final StateNotifierProviderRef ref;
  _FilterNotifier(this.ref) : super(const FilterState());

  Future<void> init() async {
    fLogger.setup('filter');
    try {
      fLogger.log('init start');
      if (state.isAllChecked != null) return;
      final value = ref.watch(_getPockemonTypesProvider).value;
      state = value ?? const FilterState();
    } catch (e) {
      rethrow;
    } finally {
      fLogger.log('init end');
    }
  }

  void onPressAll(bool? value) {
    fLogger.log('onPressAll start');
    final boxes = state.checkboxes != null
        ? state.checkboxes!
            .map((box) => CheckBoxModel(label: box.label, isCheck: value!))
            .toList()
        : null;
    state = state.copyWith(isAllChecked: value, checkboxes: boxes);
    state = state.copyWith(isAllChecked: value);
    fLogger.log('onPressAll end');
  }

  void onPressBox(String label, bool? value) {
    fLogger.log('onPressBox start');
    final checkboxes = state.checkboxes;
    if (checkboxes != null) {
      for (final checkbox in checkboxes) {
        checkbox.label == label ? checkbox.isCheck = value! : null;
      }
    }
    state = state.copyWith(checkboxes: checkboxes);
    fLogger.log('onPressAll end');
  }
}

// GraphQL query
final _getPockemonTypesProvider = FutureProvider<FilterState>((ref) async {
  try {
    fLogger.log('_getPockemonTypesProvider start');
    final query = GetPockemonTypesQuery();
    final json = await pockemonServerClient!
        .query(QueryOptions(document: query.document));
    final result = GetPockemonTypes$Query.fromJson(json);
    final pockemons = FilterState.fromJson(result.pokemons);
    return pockemons;
  } catch (e) {
    return const FilterState(isAllChecked: true);
  } finally {
    fLogger.log('_getPockemonTypesProvider end');
  }
});
