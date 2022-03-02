import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pockemon_app/provider/pockemon.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final types = ref.watch(getPockemonTypesProvider).value;
    print('types: ${types.toString()}');
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: types != null
            ? ListView.builder(
                itemCount: types.length,
                itemBuilder: (context, index) {
                  return _typeList(types[index]);
                },
              )
            : Container(),
      ),
    );
  }

  Widget _typeList(String? type) {
    print('type: ${type}');
    return Container(
      child: type != null
          ? Row(
              children: [
                Text(type),
              ],
            )
          : Container(),
    );
  }
}
