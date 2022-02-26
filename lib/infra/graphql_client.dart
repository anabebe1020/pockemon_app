import 'package:graphql/client.dart';

class GQClient {
  static final GQClient _singleton = GQClient._internal();

  factory GQClient() {
    return _singleton;
  }

  GQClient._internal();

  late final String _baseUrl;

  setup(String baseUrl) {
    _baseUrl = baseUrl;
  }

  Future<Map<String, dynamic>> query(QueryOptions options) async {
    final headers = <String, String>{};

    print('options: ${options.document.toString()}');

    final client = GraphQLClient(
      cache: GraphQLCache(),
      link: HttpLink(_baseUrl, defaultHeaders: headers),
    );

    final result = await client.query(options);
    if (result.hasException) {
      String message = "エラーが発生しました";
      if (result.exception!.graphqlErrors.isNotEmpty) {
        message = result.exception!.graphqlErrors.first.message;
      }

      throw Exception(message);
    }

    final data = result.data;
    if (data == null) {
      throw Exception("エラーが発生しました");
    }

    return data;
  }

  Future<Map<String, dynamic>> mutation(MutationOptions options) async {
    final headers = <String, String>{};

    final client = GraphQLClient(
      cache: GraphQLCache(),
      link: HttpLink(_baseUrl, defaultHeaders: headers),
    );

    final result = await client.mutate(options);

    if (result.hasException) {
      String message = "エラーが発生しました";
      if (result.exception!.graphqlErrors.isNotEmpty) {
        message = result.exception!.graphqlErrors.first.message;
      }

      throw Exception(message);
    }

    final data = result.data;
    if (data == null) {
      throw Exception("エラーが発生しました");
    }

    return data;
  }
}
