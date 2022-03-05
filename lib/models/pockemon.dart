import 'package:pockemon_app/infra/graphql/api.dart';

class PockemonModel {
  String id;
  String name;
  String image;
  List<String?> types;

  PockemonModel({
    required this.id,
    required this.name,
    required this.image,
    required this.types,
  });

  factory PockemonModel.fromJson(GetPockemons$Query$Pokemon? result) {
    return PockemonModel(
      id: result?.id ?? '',
      name: result?.name ?? '',
      image: result?.image ?? '',
      types: result?.types ?? [],
    );
  }
}

class FilterModel {
  String label;
  bool isCheck;

  FilterModel({required this.label, this.isCheck = true});
}
