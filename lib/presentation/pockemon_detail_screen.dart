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
              Text(pockemon.name ?? 'Unknown'),
              Text(pockemon.types.toString()),
            ],
          ),
        ),
      ],
    );
  }

  Widget _subInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('classification: ${pockemon.classification}'),
          Text('resistant: ${pockemon.resistant}'),
          Text('weaknesses: ${pockemon.weaknesses}'),
          Text('evolveAmount: ${pockemon.evolveAmount}'),
          Text('evolveName: ${pockemon.evolveName}'),
        ],
      ),
    );
  }
}
