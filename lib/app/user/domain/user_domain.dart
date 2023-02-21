// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserDomain {
  final String id;
  final String name;
  final String email;
  final String password;
  final String? familyId;
  UserDomain({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    this.familyId,
  });

  UserDomain copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
    String? familyId,
  }) {
    return UserDomain(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      familyId: familyId ?? this.familyId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'familyId': familyId,
    };
  }

  factory UserDomain.fromMap(Map<String, dynamic> map) {
    return UserDomain(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      familyId: map['familyId'] != null ? map['familyId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDomain.fromJson(String source) =>
      UserDomain.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserDomain(id: $id, name: $name, email: $email, password: $password, familyId: $familyId)';
  }

  @override
  bool operator ==(covariant UserDomain other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.email == email &&
        other.password == password &&
        other.familyId == familyId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        password.hashCode ^
        familyId.hashCode;
  }
}
