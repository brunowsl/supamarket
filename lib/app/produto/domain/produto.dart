// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Produto {
  final String id;
  final String name;
  final String description;
  final String image;
  final double price;
  Produto({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
  });

  Produto copyWith({
    String? id,
    String? name,
    String? description,
    String? image,
    double? price,
  }) {
    return Produto(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'price': price,
    };
  }

  factory Produto.fromMap(Map<String, dynamic> map) {
    return Produto(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      price: map['price'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Produto.fromJson(String source) =>
      Produto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Produto(id: $id, name: $name, description: $description, image: $image, price: $price)';
  }

  @override
  bool operator ==(covariant Produto other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.description == description &&
        other.image == image &&
        other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        image.hashCode ^
        price.hashCode;
  }
}
