import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pockemon_app/infra/graphql_client.dart';

const _baseUrl = 'https://graphql-pokemon2.vercel.app';

GQClient? pockemonServerClient;

final initGqlProvider = StateProvider((ref) {
  pockemonServerClient = GQClient();
  pockemonServerClient!.setup(_baseUrl);
});
