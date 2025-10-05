import 'package:home/data/models/sub_category_model/sub_category_data.dart';
import 'package:home/domain/entities/category_entity.dart';

class CategoryData extends CategoryEntity {
  final int id;
  final String image;
  final String title;
  final List<SubCategoryData>? subCategories;
  final String? createdAt;

  CategoryData({
    required this.id,
    required this.image,
    required this.title,
    this.subCategories,
    this.createdAt,
  }) : super(id: id, image: image, name: title);

  factory CategoryData.fromJson(Map<String, dynamic> json) => CategoryData(
        id: json['id'] as int,
        image: json['image'] as String,
        title: json['title'] as String,
        subCategories: (json['sub_categories'] as List<dynamic>?)
            ?.map((e) => SubCategoryData.fromJson(e as Map<String, dynamic>))
            .toList(),
        createdAt: json['created_at'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'title': title,
        'sub_categories': subCategories?.map((e) => e.toJson()).toList(),
        'created_at': createdAt,
      };

  @override
  List<Object?> get props => [id, image, title, subCategories, createdAt];
}
