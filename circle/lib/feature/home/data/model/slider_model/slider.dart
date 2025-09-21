import 'package:circle/feature/home/domain/entity/banner_entity.dart';

class Slider extends SliderEntity {
  final int id;
  final String image;
  final int? categoryId;
  final int? subCategoryId;

  Slider({
    required this.id,
    required this.image,
    this.categoryId,
    this.subCategoryId,
  }) : super(imageEntity: image, idEntity: id);

  factory Slider.fromJson(Map<String, dynamic> json) => Slider(
    id: json['id'] as int,
    image: json['image'] as String,
    categoryId: json['category_id'] as int,
    subCategoryId: json['sub_category_id'] as int,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'image': image,
    'category_id': categoryId,
    'sub_category_id': subCategoryId,
  };

  @override
  List<Object?> get props => [id, image, categoryId, subCategoryId];
}
