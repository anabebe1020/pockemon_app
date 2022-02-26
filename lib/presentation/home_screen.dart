import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pockemon_app/models/pockemon.dart';
import 'package:pockemon_app/provider/pockemon.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pockemon List'),
      ),
      body: _gridView(ref),
    );
  }

  Widget _gridView(WidgetRef ref) {
    final pockemon = ref.watch(getPockemonsProvider);
    return Container(
      child: pockemon.when(
        data: (pockemons) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: pockemons.length,
            itemBuilder: (context, index) {
              return _gridItem(pockemons[index]);
            },
          );
        },
        error: (error, stack) => Text('Error: $error'),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }

  Widget _gridItem(PockemonModel pockemon) {
    return Container(
      color: Colors.blueGrey.withOpacity(0.5),
      height: 60,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('ID: ${pockemon.id}'),
          Text('Name: ${pockemon.name}'),
          Text('Types: ${pockemon.types.toString()}'),
          Text('Image: ${pockemon.image}'),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
    );
  }
}
