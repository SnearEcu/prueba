// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListadoProductosStruct extends BaseStruct {
  ListadoProductosStruct({
    String? nombre,
    int? cantidad,
    String? subtotal,
  })  : _nombre = nombre,
        _cantidad = cantidad,
        _subtotal = subtotal;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;
  bool hasNombre() => _nombre != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  set cantidad(int? val) => _cantidad = val;
  void incrementCantidad(int amount) => _cantidad = cantidad + amount;
  bool hasCantidad() => _cantidad != null;

  // "subtotal" field.
  String? _subtotal;
  String get subtotal => _subtotal ?? '';
  set subtotal(String? val) => _subtotal = val;
  bool hasSubtotal() => _subtotal != null;

  static ListadoProductosStruct fromMap(Map<String, dynamic> data) =>
      ListadoProductosStruct(
        nombre: data['nombre'] as String?,
        cantidad: castToType<int>(data['cantidad']),
        subtotal: data['subtotal'] as String?,
      );

  static ListadoProductosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? ListadoProductosStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'cantidad': _cantidad,
        'subtotal': _subtotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'cantidad': serializeParam(
          _cantidad,
          ParamType.int,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListadoProductosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListadoProductosStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        cantidad: deserializeParam(
          data['cantidad'],
          ParamType.int,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListadoProductosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListadoProductosStruct &&
        nombre == other.nombre &&
        cantidad == other.cantidad &&
        subtotal == other.subtotal;
  }

  @override
  int get hashCode => const ListEquality().hash([nombre, cantidad, subtotal]);
}

ListadoProductosStruct createListadoProductosStruct({
  String? nombre,
  int? cantidad,
  String? subtotal,
}) =>
    ListadoProductosStruct(
      nombre: nombre,
      cantidad: cantidad,
      subtotal: subtotal,
    );
