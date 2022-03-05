import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pockemon_app/models/pockemon.dart';
import 'package:pockemon_app/provider/pockemon.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = FilterModel(label: 'All');
    final notifier = ref.watch(getPockemonTypeProvider);
    //
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: notifier.when(
            data: (types) {
              final filters = [model, ...types];
              return ListView.builder(
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  return _typeList(ref, filters[index], index);
                },
              );
            },
            error: (error, stack) => Text('Error: $error'),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }

  Widget _typeList(WidgetRef ref, FilterModel model, int index) {
    final notifier = ref.watch(filterProvider.notifier);
    return Container(
      child: model.label.isNotEmpty
          ? CheckboxListTile(
              value: model.isCheck,
              title: Text(
                model.label,
                style: const TextStyle(fontSize: 20),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) => notifier.onPressBox(index, value),
            )
          : Container(),
    );
  }
}
