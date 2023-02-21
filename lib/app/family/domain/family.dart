// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:supamarket/app/user/domain/user_domain.dart';

class Family {
  final String id;
  final String name;
  final String description;
  final String image;
  final UserDomain owner;
  final DateTime createdAt;
  Family({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.owner,
    required this.createdAt,
  });

  Family copyWith({
    String? id,
    String? name,
    String? description,
    String? image,
    UserDomain? owner,
    DateTime? createdAt,
  }) {
    return Family(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      owner: owner ?? this.owner,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'owner': owner.toMap(),
      'createdAt': createdAt.millisecondsSinceEpoch,
    };
  }

  factory Family.fromMap(Map<String, dynamic> map) {
    return Family(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      owner: UserDomain.fromMap(map['owner'] as Map<String, dynamic>),
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Family.fromJson(String source) =>
      Family.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Family(id: $id, name: $name, description: $description, image: $image, owner: $owner, createdAt: $createdAt)';
  }

  @override
  bool operator ==(covariant Family other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.description == description &&
        other.image == image &&
        other.owner == owner &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        image.hashCode ^
        owner.hashCode ^
        createdAt.hashCode;
  }
}
