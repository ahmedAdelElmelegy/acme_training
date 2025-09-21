// first    same in clean architecture

// repo

abstract class ProductRepository {
  Future<List<String>> fetchProducts();
}

// repo imp in clean architecture

// get data from api
class ApiProductRepository implements ProductRepository {
  @override
  Future<List<String>> fetchProducts() async {
    return ["Apple", "Banana", "Orange"]; // من API
  }
}

// ex
// get data from local db

class LocalProductRepository implements ProductRepository {
  @override
  Future<List<String>> fetchProducts() async {
    return ["Mango", "Grapes", "Peach"]; // من Local DB
  }
}
// use repo to reatch for local and api data

class ProductController {
  final ProductRepository repository;

  ProductController(this.repository);

  void getProducts() async {
    final data = await repository.fetchProducts();
    print(data);
  }
}
