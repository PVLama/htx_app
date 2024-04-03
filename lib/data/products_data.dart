import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:htx_mh/resources/app_assets.dart';

import '../models/product_model.dart';

class ProductData {
  static final ProductData _instance = ProductData._internal();

  List<String> nameProducts = [
    "Mũ thổ cẩm Mũ thổ cẩm okok",
    "Hoa quả",
    "Đồ thủ công",
    "Váy thổ cẩm",
    "Đồ uống",
  ];
  List<int> productPrice = [
    100,
    200,
    250,
    210,
    450,
  ];

  List<Image> imageDetail = [
    Image.asset(AppAssets.imgCanuong, fit: BoxFit.cover,),
    Image.asset(AppAssets.imgThittrau, fit: BoxFit.cover),
    Image.asset(AppAssets.imgLau, fit: BoxFit.cover),
    Image.asset(AppAssets.imgThittrau, fit: BoxFit.cover),
    Image.asset(AppAssets.imgCanuong, fit: BoxFit.cover),
  ];

  static List<ProductModel> getProducts(int index) {
    switch (index) {
      case 1:
        return _getProducts();
      case 2:
        return _getProducts2();
      case 3:
        return _getProducts3();
      default:
        return [];
    }
  }
  static List<ProductModel> _getProducts() {
    return [
      ProductModel(
        Colors.red,
        "Mũ thổ cẩm Mũ thổ cẩm okok",
        65000,
        "Đặc sản mường hoa1",
        "rong khu vực. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng có thể được thêm vào thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.1",
      ),
      ProductModel(
        Colors.yellowAccent,
        "Hoa quả",
        75500,
        "Đặc sản mường hoa2",
        "Để chuẩn bị cáng cua, người dân thường bắt cua đồng từ các dòng suối và ao trong khu vực. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than ct, tiêu cũng có thể được thêm vào để tăng hương vị.Món cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rấthiệm ẩm thực của vùng núi phía Bắc Việt Nam.2",
      ),
      ProductModel(
        Colors.brown,
        "Quần áo thổ cẩm",
        85000,
        "Đặc sản mường hoa3",
        "Để cực. Cua sau đó được. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng  cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.3",
      ),
      ProductModel(
        Colors.purpleAccent,
        "Cá nướng",
        65000,
        "Đặc sản mường hoa4",
        "Để chuẩn bị cáng cua, người dân thường bắt c sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối,vị.Món cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.4",
      ),
      ProductModel(
        Colors.green,
        "Trâu gác bếp",
        45000,
        "Đặc sản mường hoa5",
        "Để chuẩn bị cáng cua, người dân thường bắt cua đồng từ các dòng suối và ao trong khu vực. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng có thể được thêm vào để tăng hương vị.Món cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.5",
      ),
      ProductModel(
        Colors.orange,
        "Thảo dược",
        25000,
        "Đặc sản mường hoa6",
        "Để chuẩn bị cánc. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng có thể được thêmưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.6",
      ),
    ];
  }

  static List<ProductModel> _getProducts2() {
    return [
      ProductModel(
        Colors.red,
        "Mũ thổ cẩm 2",
        45000,
        "Đặc sản mường hoa1",
        "rong khu vực. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng có thể được thêm vào thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.1",
      ),
      ProductModel(
        Colors.yellowAccent,
        "Hoa quả sấy2",
        45000,
        "Đặc sản mường hoa2",
        "Để chuẩn bị cáng cua, người dân thường bắt cua đồng từ các dòng suối và ao trong khu vực. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than ct, tiêu cũng có thể được thêm vào để tăng hương vị.Món cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rấthiệm ẩm thực của vùng núi phía Bắc Việt Nam.2",
      ),
      ProductModel(
        Colors.brown,
        "Quần áo thổ cẩm2",
        45000,
        "Đặc sản mường hoa3",
        "Để cực. Cua sau đó được. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng  cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.3",
      ),
      ProductModel(
        Colors.purpleAccent,
        "Cá nướng2",
        45000,
        "Đặc sản mường hoa4",
        "Để chuẩn bị cáng cua, người dân thường bắt c sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối,vị.Món cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.4",
      ),
      ProductModel(
        Colors.green,
        "Trâu gác bếp2",
        45000,
        "Đặc sản mường hoa5",
        "Để chuẩn bị cáng cua, người dân thường bắt cua đồng từ các dòng suối và ao trong khu vực. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng có thể được thêm vào để tăng hương vị.Món cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.5",
      ),
      ProductModel(
        Colors.orange,
        "Thảo dược2",
        45000,
        "Đặc sản mường hoa6",
        "Để chuẩn bị cánc. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng có thể được thêmưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.6",
      ),
    ];
  }

  static List<ProductModel> _getProducts3() {
    return [
      ProductModel(
        Colors.red,
        "Mũ thổ cẩm 3",
        45000,
        "Đặc sản mường hoa1",
        "rong khu vực. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng có thể được thêm vào thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.1",
      ),
      ProductModel(
        Colors.yellowAccent,
        "Hoa quả sấy3",
        45000,
        "Đặc sản mường hoa2",
        "Để chuẩn bị cáng cua, người dân thường bắt cua đồng từ các dòng suối và ao trong khu vực. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than ct, tiêu cũng có thể được thêm vào để tăng hương vị.Món cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rấthiệm ẩm thực của vùng núi phía Bắc Việt Nam.2",
      ),
      ProductModel(
        Colors.brown,
        "Quần áo thổ cẩm3",
        45000,
        "Đặc sản mường hoa3",
        "Để cực. Cua sau đó được. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng  cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.3",
      ),
      ProductModel(
        Colors.purpleAccent,
        "Cá nướng3",
        45000,
        "Đặc sản mường hoa4",
        "Để chuẩn bị cáng cua, người dân thường bắt c sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối,vị.Món cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.4",
      ),
      ProductModel(
        Colors.green,
        "Trâu gác bếp3",
        45000,
        "Đặc sản mường hoa5",
        "Để chuẩn bị cáng cua, người dân thường bắt cua đồng từ các dòng suối và ao trong khu vực. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng có thể được thêm vào để tăng hương vị.Món cáng cua thường được thưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.5",
      ),
      ProductModel(
        Colors.orange,
        "Thảo dược3",
        45000,
        "Đặc sản mường hoa6",
        "Để chuẩn bị cánc. Cua sau đó được làm sạch, bỏ phần cứng và nướng trên lửa than cho đến khi chín vàng. Một số gia vị như muối, ớt, tiêu cũng có thể được thêmưởng thức cùng với rau sống như rau thơm, rau răm, bún, bánh đa, và một số loại gia vị như nước mắm chua ngọt pha chế từ các nguyên liệu tự nhiên.Cáng cua không chỉ là một món ăn ngon mà còn là một phần của văn hóa ẩm thực địa phương tại Sapa. Với hương vị đặc trưng, sự tươi ngon và độc đáo, cáng cua thu hút rất nhiều du khách đến thưởng ngoạn và trải nghiệm ẩm thực của vùng núi phía Bắc Việt Nam.6",
      ),
    ];
  }

  factory ProductData() {
    return _instance;
  }

  ProductData._internal();
}

ProductData productData = ProductData();
