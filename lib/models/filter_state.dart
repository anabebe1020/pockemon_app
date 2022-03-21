import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pockemon_app/infra/graphql/api.dart';
import 'package:pockemon_app/utils/translation.dart';

part 'filter_state.freezed.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    bool? isAllChecked,
    List<CheckBoxModel>? checkboxes,
  }) = _FilterState;

  factory FilterState.fromJson(List<GetPockemonTypes$Query$Pokemon?>? result) {
    List<CheckBoxModel>? checkboxes;
    List<String> typeList = [];
    if (result != null) {
      // 取得結果から複数のポケモンを抽出
      for (final pockemon in result) {
        if (pockemon != null) {
          // ポケモン1体につき、タイプが複数ある
          final types = pockemon.types;
          if (types != null) {
            for (final type in types) {
              if (type != null) {
                typeList.add(typeEnToJp(type));
              }
            }
          }
        }
      }
      // 重複をなくす
      typeList = typeList.toSet().toList();
      checkboxes = typeList
          .map((type) => CheckBoxModel(label: type, isCheck: true))
          .toList();
    }
    return FilterState(
      isAllChecked: true,
      checkboxes: checkboxes,
    );
  }
}

class CheckBoxModel {
  String? label;
  bool isCheck;
  CheckBoxModel({required this.label, required this.isCheck});
}
