// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProformaStruct extends BaseStruct {
  ProformaStruct({
    String? ruc,
    String? cliente,
    String? direccion,
    DateTime? fechaEmision,
    String? correo,
    List<ListadoProductosStruct>? productos,
  })  : _ruc = ruc,
        _cliente = cliente,
        _direccion = direccion,
        _fechaEmision = fechaEmision,
        _correo = correo,
        _productos = productos;

  // "ruc" field.
  String? _ruc;
  String get ruc => _ruc ?? '';
  set ruc(String? val) => _ruc = val;
  bool hasRuc() => _ruc != null;

  // "cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  set cliente(String? val) => _cliente = val;
  bool hasCliente() => _cliente != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;
  bool hasDireccion() => _direccion != null;

  // "fecha_emision" field.
  DateTime? _fechaEmision;
  DateTime? get fechaEmision => _fechaEmision;
  set fechaEmision(DateTime? val) => _fechaEmision = val;
  bool hasFechaEmision() => _fechaEmision != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  set correo(String? val) => _correo = val;
  bool hasCorreo() => _correo != null;

  // "productos" field.
  List<ListadoProductosStruct>? _productos;
  List<ListadoProductosStruct> get productos => _productos ?? const [];
  set productos(List<ListadoProductosStruct>? val) => _productos = val;
  void updateProductos(Function(List<ListadoProductosStruct>) updateFn) =>
      updateFn(_productos ??= []);
  bool hasProductos() => _productos != null;

  static ProformaStruct fromMap(Map<String, dynamic> data) => ProformaStruct(
        ruc: data['ruc'] as String?,
        cliente: data['cliente'] as String?,
        direccion: data['direccion'] as String?,
        fechaEmision: data['fecha_emision'] as DateTime?,
        correo: data['correo'] as String?,
        productos: getStructList(
          data['productos'],
          ListadoProductosStruct.fromMap,
        ),
      );

  static ProformaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ProformaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'ruc': _ruc,
        'cliente': _cliente,
        'direccion': _direccion,
        'fecha_emision': _fechaEmision,
        'correo': _correo,
        'productos': _productos?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ruc': serializeParam(
          _ruc,
          ParamType.String,
        ),
        'cliente': serializeParam(
          _cliente,
          ParamType.String,
        ),
        'direccion': serializeParam(
          _direccion,
          ParamType.String,
        ),
        'fecha_emision': serializeParam(
          _fechaEmision,
          ParamType.DateTime,
        ),
        'correo': serializeParam(
          _correo,
          ParamType.String,
        ),
        'productos': serializeParam(
          _productos,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ProformaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProformaStruct(
        ruc: deserializeParam(
          data['ruc'],
          ParamType.String,
          false,
        ),
        cliente: deserializeParam(
          data['cliente'],
          ParamType.String,
          false,
        ),
        direccion: deserializeParam(
          data['direccion'],
          ParamType.String,
          false,
        ),
        fechaEmision: deserializeParam(
          data['fecha_emision'],
          ParamType.DateTime,
          false,
        ),
        correo: deserializeParam(
          data['correo'],
          ParamType.String,
          false,
        ),
        productos: deserializeStructParam<ListadoProductosStruct>(
          data['productos'],
          ParamType.DataStruct,
          true,
          structBuilder: ListadoProductosStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProformaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProformaStruct &&
        ruc == other.ruc &&
        cliente == other.cliente &&
        direccion == other.direccion &&
        fechaEmision == other.fechaEmision &&
        correo == other.correo &&
        listEquality.equals(productos, other.productos);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([ruc, cliente, direccion, fechaEmision, correo, productos]);
}

ProformaStruct createProformaStruct({
  String? ruc,
  String? cliente,
  String? direccion,
  DateTime? fechaEmision,
  String? correo,
}) =>
    ProformaStruct(
      ruc: ruc,
      cliente: cliente,
      direccion: direccion,
      fechaEmision: fechaEmision,
      correo: correo,
    );
