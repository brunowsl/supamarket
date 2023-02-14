// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Market {
  final String name;
  final String description;
  final String type;
  final String address;
  final String date;
  Market({
    required this.name,
    required this.description,
    required this.type,
    required this.address,
    required this.date,
  });

  Market copyWith({
    String? name,
    String? description,
    String? type,
    String? address,
    String? date,
  }) {
    return Market(
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      address: address ?? this.address,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'type': type,
      'address': address,
      'date': date,
    };
  }

  factory Market.fromMap(Map<String, dynamic> map) {
    return Market(
      name: map['name'] as String,
      description: map['description'] as String,
      type: map['type'] as String,
      address: map['address'] as String,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Market.fromJson(String source) =>
      Market.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Market(name: $name, description: $description, type: $type, address: $address, date: $date)';
  }

  @override
  bool operator ==(covariant Market other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.description == description &&
        other.type == type &&
        other.address == address &&
        other.date == date;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        type.hashCode ^
        address.hashCode ^
        date.hashCode;
  }
}
