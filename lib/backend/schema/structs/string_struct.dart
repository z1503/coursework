// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StringStruct extends BaseStruct {
  StringStruct({
    String? name,
  }) : _name = name;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static StringStruct fromMap(Map<String, dynamic> data) => StringStruct(
        name: data['name'] as String?,
      );

  static StringStruct? maybeFromMap(dynamic data) =>
      data is Map ? StringStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static StringStruct fromSerializableMap(Map<String, dynamic> data) =>
      StringStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StringStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StringStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

StringStruct createStringStruct({
  String? name,
}) =>
    StringStruct(
      name: name,
    );
