import 'dart:convert';

import 'package:supamarket/app/user/domain/user_domain.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Purchase {
  int? id;
  UserDomain responsavel;
  UserDomain criadoPor;
  DateTime data;
  bool finalizado;
  double valor;
  Purchase({
    this.id,
    required this.responsavel,
    required this.criadoPor,
    required this.data,
    required this.finalizado,
    required this.valor,
  });

  Purchase copyWith({
    int? id,
    UserDomain? responsavel,
    UserDomain? criadoPor,
    DateTime? data,
    bool? finalizado,
    double? valor,
  }) {
    return Purchase(
      id: id ?? this.id,
      responsavel: responsavel ?? this.responsavel,
      criadoPor: criadoPor ?? this.criadoPor,
      data: data ?? this.data,
      finalizado: finalizado ?? this.finalizado,
      valor: valor ?? this.valor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'responsavel': responsavel.toMap(),
      'criadoPor': criadoPor.toMap(),
      'data': data.millisecondsSinceEpoch,
      'finalizado': finalizado,
      'valor': valor,
    };
  }

  factory Purchase.fromMap(Map<String, dynamic> map) {
    return Purchase(
      id: map['id'] != null ? map['id'] as int : null,
      responsavel:
          UserDomain.fromMap(map['responsavel'] as Map<String, dynamic>),
      criadoPor: UserDomain.fromMap(map['criadoPor'] as Map<String, dynamic>),
      data: DateTime.fromMillisecondsSinceEpoch(map['data'] as int),
      finalizado: map['finalizado'] as bool,
      valor: map['valor'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Purchase.fromJson(String source) =>
      Purchase.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Purchase(id: $id, responsavel: $responsavel, criadoPor: $criadoPor, data: $data, finalizado: $finalizado, valor: $valor)';
  }

  @override
  bool operator ==(covariant Purchase other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.responsavel == responsavel &&
        other.criadoPor == criadoPor &&
        other.data == data &&
        other.finalizado == finalizado &&
        other.valor == valor;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        responsavel.hashCode ^
        criadoPor.hashCode ^
        data.hashCode ^
        finalizado.hashCode ^
        valor.hashCode;
  }
}
