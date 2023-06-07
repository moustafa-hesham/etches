import '../network/models/model.dart';
import '../network/services/api.dart';

class HomeLogic {
  static final fakeProductApi = FakeProductApi();

  static List<ProductModel> getProducts() {
    return fakeProductApi.products;
  }
}
