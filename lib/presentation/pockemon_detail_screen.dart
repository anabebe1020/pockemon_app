import 'package:flutter/material.dart';
import 'package:pockemon_app/models/pockemon_state.dart';

class PockemonDetailScreen extends StatelessWidget {
  final PockemonState pockemon;
  const PockemonDetailScreen({Key? key, required this.pockemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pockemon.name ?? 'Unknown'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Column(
              children: [
                _baseInfo(),
                _subInfo(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _baseInfo() {
    final image =
        pockemon.image != null ? Image.network(pockemon.image!) : Container();

    return Row(
      children: [
        SizedBox(height: 160, child: image),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: const Text(
                    '基本情報',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              _BaseInfoItemWidget(text: 'No. ${pockemon.number}'),
              _BaseInfoItemWidget(text: pockemon.name ?? 'Unknown'),
              _BaseInfoItemWidget(text: pockemon.types.toString()),
            ],
          ),
        ),
      ],
    );
  }

  Widget _subInfo() {
    final evolve = '${pockemon.evolveName}: ${pockemon.evolveAmount}';
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SubInfoItemWidget(label: '種別', text: pockemon.classification),
          _SubInfoItemWidget(label: '耐性', text: pockemon.resistant.toString()),
          _SubInfoItemWidget(label: '弱点', text: pockemon.weaknesses.toString()),
          _SubInfoItemWidget(label: '進化', text: evolve),
        ],
      ),
    );
  }
}

class _BaseInfoItemWidget extends StatelessWidget {
  final String text;
  const _BaseInfoItemWidget({required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}

class _SubInfoItemWidget extends StatelessWidget {
  final String label;
  final String? text;
  const _SubInfoItemWidget({required this.label, required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(label,
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          Expanded(child: Text(text ?? '')),
        ],
      ),
    );
  }
}
