import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pockemon_app/models/pockemon_state.dart';
import 'package:pockemon_app/presentation/filter_screen.dart';
import 'package:pockemon_app/provider/pockemon_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // init
    //WidgetsBinding.instance?.addPostFrameCallback((_) {
    //  ref
    //      .watch(pockemonProvider.notifier)
    //      .init()
    //      .catchError(generalErrorHandlerOf(context));
    //});
    // scaffold
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
    final provider = ref.watch(pockemonProvider);
    return Container(
      color: Colors.blueGrey.withOpacity(0.2),
      child: provider.isNotEmpty
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: provider.length,
              itemBuilder: (context, index) {
                return _gridItem(context, provider[index]);
              },
            )
          : _empty(context),
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
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: //const CupertinoActivityIndicator(),
          const Text('該当するポケモンはいません', style: TextStyle(fontSize: 24)),
    );
  }
}
