class CategoryEntity {
  final int id;
  final String name;
  final String image;

  CategoryEntity({required this.id, required this.name, required this.image});
  factory CategoryEntity.fromJson(Map<String, dynamic> json) {
    return CategoryEntity(
      id: json['id'],
      name: json['title'],
      image: json['image'],
    );
  }
}
