import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pockemon_app/models/pockemon.dart';
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
    final pockemon = ref.watch(getPockemonsProvider);
    return Container(
      color: Colors.blueGrey.withOpacity(0.2),
      child: pockemon.when(
        data: (pockemons) {
          List<PockemonModel> filterdPockemons = [];
          final filters = ref.watch(filterProvider);
          for (final pockemon in pockemons) {
            for (final type in pockemon.types) {
              for (final filter in filters) {
                if (type == filter.label) {
                  filter.isCheck ? filterdPockemons.add(pockemon) : null;
                  // TODO: チェック結果がおかしい
                }
              }
            }
          }
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount:
                filters.isEmpty ? pockemons.length : filterdPockemons.length,
            itemBuilder: (context, index) {
              return _gridItem(context,
                  filters.isEmpty ? pockemons[index] : filterdPockemons[index]);
            },
          );
        },
        error: (error, stack) => Text('Error: $error'),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }

  Widget _gridItem(BuildContext context, PockemonModel pockemon) {
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
            child: pockemon.image.isNotEmpty
                ? Image.network(pockemon.image)
                : Container(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              pockemon.name,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Text(pockemon.types.toString()),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
    );
  }
}
