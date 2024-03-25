import '../data/products_data.dart';
import '../models/product_model.dart';

class ProductViewModel {
  List<ProductModel> createProducts = ProductData.getProducts(1);
  List<ProductModel> createProducts2 = ProductData.getProducts(2);
  List<ProductModel> createProducts3 = ProductData.getProducts(3);

  List<ProductModel> getAllProducts() {
    List<ProductModel> allProducts = [];
    allProducts.addAll(createProducts);
    allProducts.addAll(createProducts2);
    allProducts.addAll(createProducts3);
    return allProducts;
  }
}

