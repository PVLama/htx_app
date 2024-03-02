import 'package:flutter/material.dart';
import 'package:htx_mh/widgets/item_list/homestay_items.dart';

import '../../utills/responsives/dimentions.dart';
import '../../utills/text/big_text.dart';
import '../../utills/text/middle_text.dart';
import '../item_list/product_items.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductState();
}

class _AllProductState extends State<AllProducts> {

  final List<Widget> productWidgets = [
    ProductItemsList(),
    HomeStayItems(),
    ProductItemsList(),
    ProductItemsList(),
    ProductItemsList()
  ];

  final List<Widget> text = [
    BigText(text: "Các sản phẩm tiêu biểu", size: Dimentions.font25),
    MiddleText(text: "Đặc sản Mường Hoa", size: Dimentions.font20),
    MiddleText(text: "Trang phục thổ cẩm", size: Dimentions.font20),
    MiddleText(text: "Hoa quả bốn mùa", size: Dimentions.font20),
    MiddleText(text: "Đồ uống", size: Dimentions.font20),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          buildAllProduct(productWidgets[0], text[0]),
          buildAllProduct(productWidgets[1], text[1]),
          buildAllProduct(productWidgets[2], text[2]),
          buildAllProduct(productWidgets[3], text[3]),
          buildAllProduct(productWidgets[4], text[4]),
        ],
      ),
    );
  }

  Widget buildAllProduct(Widget productWidget, Widget textWidget) => Column(
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
            itemCount: 5,
            itemBuilder: (context, index){
              EdgeInsets margin = EdgeInsets.zero;
              if (index == 0) {
                margin = EdgeInsets.only(left: Dimentions.width15);
              }
              return Container(
                margin: margin,
                  child: productWidget
              );
            }),
      ),
    ],
  );
}

