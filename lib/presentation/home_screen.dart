import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pockemon_app/provider/pockemon.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getPockemons = ref.watch(getPockemonsProvider);
    final result = ref.watch(getPockemonsProvider.future);
    print(result.asStream().toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pockemon List'),
      ),
      body: Container(
          //child: getPockemons.when(
          //  data: data,
          //  error: error,
          //  loading: loading,
          //),
          ),
    );
  }
}
