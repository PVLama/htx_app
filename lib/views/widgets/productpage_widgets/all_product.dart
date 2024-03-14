import 'package:flutter/material.dart';
import '../../../data/products_data.dart';
import '../../../utills/responsives/dimentions.dart';
import '../../../utills/text/big_text.dart';
import '../../../utills/text/middle_text.dart';
import '../item_list/product_items.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key,}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductState();
}

class _AllProductState extends State<AllProducts> {

  final List<Widget> text = [
    BigText(text: "Các sản phẩm tiêu biểu", size: Dimentions.font25),
    MiddleText(text: "Đặc sản Mường Hoa", size: Dimentions.font20),
    MiddleText(text: "Trang phục thổ cẩm", size: Dimentions.font20),
    MiddleText(text: "Hoa quả bốn mùa", size: Dimentions.font20),
    MiddleText(text: "Đồ uống", size: Dimentions.font20),
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> productNames = productData.nameProduct;
    final List<String> productHoaQua = productData.hoaQua;
    final List<String> productDacSan = productData.dacSan;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          buildAllProduct(
            productNames.map((productAll) => ProductItemsList(productName: productAll)).toList(),
            BigText(text: "Các sản phẩm tiêu biểu", size: Dimentions.font25),
          ),
          buildAllProduct(
            productDacSan.map((productDacSan) => ProductItemsList(productName: productDacSan)).toList(),
            MiddleText(text: "Đặc sản Mường Hoa", size: Dimentions.font20),
          ),
          buildAllProduct(
            productNames.map((productName) => ProductItemsList(productName: productName)).toList(),
            MiddleText(text: "Trang phục thổ cẩm", size: Dimentions.font20),
          ),
          buildAllProduct(
            productHoaQua.map((productHoaQua) => ProductItemsList(productName: productHoaQua)).toList(),
            MiddleText(text: "Hoa quả bốn mùa", size: Dimentions.font20),
          ),
          buildAllProduct(
            productNames.map((productName) => ProductItemsList(productName: productName)).toList(),
            MiddleText(text: "Đồ uống", size: Dimentions.font20),
          ),
        ],
      ),
    );
  }

  Widget buildAllProduct(List<Widget> productWidgets, Widget textWidget) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:[
      Padding(
        padding: EdgeInsets.only(left: Dimentions.width15),
        child: textWidget,
      ),
      SizedBox(
        height: Dimentions.height50*5,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: productData.nameProduct.length,
            itemBuilder: (context, index){
              EdgeInsets margin = EdgeInsets.zero;
              if (index == 0) {
                margin = EdgeInsets.only(left: Dimentions.width15);
              }
              return Container(
                margin: margin,
                  child: productWidgets[index]
              );
            }),
      ),
    ],
  );
}

