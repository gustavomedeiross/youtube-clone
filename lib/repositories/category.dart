import 'package:youtube_clone/models/category.dart';

class CategoryRepository {
  List<Category> index() {
    List<Category> categories = [
      Category(id: 0, name: 'All'),
      Category(id: 1, name: 'Counter-Strike: Global Offensive'),
      Category(id: 2, name: 'Eletric Guitar'),
      Category(id: 3, name: 'Linux'),
      Category(id: 4, name: 'Programming'),
      Category(id: 5, name: 'Flutter'),
      Category(id: 6, name: 'Vue.js'),
    ];

    return categories;
  }
}
