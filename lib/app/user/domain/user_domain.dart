// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserDomain {
  final String id;
  final String name;
  final String email;
  UserDomain({
    required this.id,
    required this.name,
    required this.email,
  });

  UserDomain copyWith({
    String? id,
    String? name,
    String? email,
  }) {
    return UserDomain(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
    };
  }

  factory UserDomain.fromMap(Map<String, dynamic> map) {
    return UserDomain(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDomain.fromJson(String source) =>
      UserDomain.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserDomain(id: $id, name: $name, email: $email)';

  @override
  bool operator ==(covariant UserDomain other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.email == email;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ email.hashCode;
}
