import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.category,
    required this.description,
    required this.image,
  });
  int id;
  String title;
  double price;
  String category;
  String description;
  String image;

  factory ProductModel.fromJson(Map<String,dynamic> fromJson) => _$ProductModelFromJson(fromJson);

  Map<String,dynamic> toJson() => _$ProductModelToJson(this);
}
