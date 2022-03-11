import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pockemon_app/models/pockemon_state.dart';
import 'package:pockemon_app/presentation/filter_screen.dart';
import 'package:pockemon_app/provider/pockemon.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pockemon List'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => const FilterScreen())),
            icon: const Icon(Icons.filter_alt_rounded),
          )
        ],
      ),
      body: _gridView(context, ref),
    );
  }

  Widget _gridView(BuildContext context, WidgetRef ref) {
    final pockemonProvider = ref.watch(getPockemonsProvider);
    final filters = ref.watch(filterProvider);
    print('HomeScreen _gridView');
    return Container(
      color: Colors.blueGrey.withOpacity(0.2),
      child: pockemonProvider.when(
        data: (pockemons) {
          List<PockemonState> filteredPockemons = [];
          final filtersIsChecked =
              filters.where((filter) => filter.isCheck!).toList();
          for (final filter in filtersIsChecked) {
            for (final pockemon in pockemons) {
              final types = pockemon.types;
              if (types != null) {
                final result = types.indexWhere((type) => type == filter.label);
                result > 0 ? filteredPockemons.add(pockemon) : null;
              }
            }
          }
          return pockemons.isNotEmpty
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: filters.isEmpty
                      ? pockemons.length
                      : filteredPockemons.length,
                  itemBuilder: (context, index) {
                    return _gridItem(
                        context,
                        filters.isEmpty
                            ? pockemons[index]
                            : filteredPockemons[index]);
                  },
                )
              : _empty(context);
        },
        error: (error, stack) => Text('Error: $error'),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget _gridItem(BuildContext context, PockemonState pockemon) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: pockemon.image != null && pockemon.image!.isNotEmpty
                ? Image.network(pockemon.image!)
                : Container(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              pockemon.name ?? '',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Text(pockemon.types.toString()),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
    );
  }

  Widget _empty(BuildContext context) {
    return const Center(
      child: Text('該当するポケモンはいません', style: TextStyle(fontSize: 44)),
    );
  }
}
