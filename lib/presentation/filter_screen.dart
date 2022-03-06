import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pockemon_app/models/pockemon.dart';
import 'package:pockemon_app/provider/pockemon.dart';

class FilterScreen extends ConsumerStatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<FilterScreen> createState() => _State();
}

class _State extends ConsumerState<FilterScreen> {
  List<FilterModel> _filters = [];

  @override
  void initState() {
    final notifier = ref.read(filterProvider.notifier);
    notifier.getPockemonTypes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _filters = ref.watch(filterProvider);
    //
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
          itemCount: _filters.length,
          itemBuilder: (context, index) {
            return _typeList(index);
          },
        ),
      ),
    );
  }

  Widget _typeList(int index) {
    return Container(
      child: _filters[index].label.isNotEmpty
          ? CheckboxListTile(
              value: _filters[index].isCheck,
              title: Text(
                _filters[index].label,
                style: const TextStyle(fontSize: 20),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) => setState(() {
                ref.read(filterProvider.notifier).onPressBox(index, value);
              }),
            )
          : Container(),
    );
  }
}
