import 'package:flutter/material.dart';
import 'package:htx_mh/consts/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/utills/text/middle_text.dart';

import '../../../utills/text/big_text.dart';
import '../item_list/product_items.dart';

class ProductListHomePage extends StatefulWidget {
  const ProductListHomePage({Key? key}) : super(key: key);

  @override
  State<ProductListHomePage> createState() => _HomeStayListState();
}

class _HomeStayListState extends State<ProductListHomePage> {

  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.yellowAccent,
    Colors.green,
  ];
  final List<Color> img = [
    Colors.yellowAccent,
    Colors.green,
    Colors.black,
    Colors.blueGrey,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Dimentions.height10, left: Dimentions.width15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "Các sản phẩm tại Mường Hoa", size: Dimentions.font25,),
              MiddleText(text: "Món ăn đặc sản và quà lưu niệm không thể bỏ qua", size: Dimentions.font16,)
            ],
          ),
          Container(
            height: Dimentions.height270,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: Dimentions.height10/2),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: colors.length,
                itemBuilder: (context, index){
                  return ProductItemsHomePage();
                }),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: Dimentions.width130,
              height: Dimentions.height40,
              child: ElevatedButton(onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(wcolor),
                    elevation: MaterialStateProperty.all<double>(Dimentions.height10/2),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Dimentions.radius10), // Độ cong của viền
                        ),
                    ),
                  ),
                  child: BigText(text: "Xem tất cả", size: Dimentions.font16,),
          ),
            ),
          ),
        ],
      ),
    );
  }

}
