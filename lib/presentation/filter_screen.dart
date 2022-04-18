import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pockemon_app/models/filter_state.dart';
import 'package:pockemon_app/provider/filter_provider.dart';
import 'package:pockemon_app/widget/general_error.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // init
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      ref
          .watch(filterProvider.notifier)
          .init()
          .catchError(generalErrorHandlerOf(context));
    });
    // scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Filter',
          style: TextStyle(color: Colors.blueGrey),
        ),
        elevation: 0,
        backgroundColor: Colors.blueGrey.shade50,
        foregroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey.shade50,
      body: _body(context, ref),
    );
  }

  Widget _body(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(filterProvider);
    final checkboxes = provider.checkboxes;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView(
        shrinkWrap: true,
        //physics: const NeverScrollableScrollPhysics(),
        children: [
          provider.isAllChecked != null
              ? CheckboxListTile(
                  value: provider.isAllChecked,
                  title: const Text('All', style: TextStyle(fontSize: 20)),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) =>
                      ref.watch(filterProvider.notifier).onPressAll(value),
                )
              : Container(),
          checkboxes != null && checkboxes.isNotEmpty
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: checkboxes.length,
                  itemBuilder: (context, index) {
                    return _typeList(checkboxes[index], ref);
                  },
                  physics: const NeverScrollableScrollPhysics(),
                )
              : _empty(context),
        ],
      ),
    );
  }

  Widget _typeList(CheckBoxModel state, WidgetRef ref) {
    final label = state.label;
    return Container(
      child: label != null
          ? CheckboxListTile(
              value: state.isCheck,
              title: Text(
                label,
                style: const TextStyle(fontSize: 20),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) =>
                  ref.watch(filterProvider.notifier).onPressBox(label, value),
            )
          : Container(),
    );
  }

  Widget _empty(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const CupertinoActivityIndicator(),
    );
  }
}
