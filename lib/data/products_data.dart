class ProductData {
  // Singleton instance
  static final ProductData _instance = ProductData._internal();

  // Danh sách tên sản phẩm
  List<String> nameProduct = [
    "Mũ thổ cẩm Mũ thổ cẩm okok",
    "Hoa quả",
    "Đồ thủ công",
    "Váy thổ cẩm",
    "Đồ uống",
    "Đồ uống",
  ];

  List<String> dacSan = [
    "Nấm hương rừng",
    "Muối chẩm chéo",
    "Măng vầu Sapa",
    "Tương ớt Mường Khương",
    "Thịt trâu gác bếp",
    "Ô mai trám",
  ];

  List<String> hoaQua = [
    "Mận Sapa",
    "Đào",
    "Mắc cọp",
    "Quả lọ",
    "Quả chai",
    "Ô mai trám",
  ];


  factory ProductData() {
    return _instance;
  }

  ProductData._internal();
}

// Sử dụng:
ProductData productData = ProductData();
