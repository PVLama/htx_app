import 'package:flutter/material.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/utills/text/middle_text.dart';

import '../../../resources/colors.dart';
import '../../../utills/text/big_text.dart';
import '../../pages/product_page.dart';
import '../item_list/product_items.dart';

class ProductListHomePage extends StatefulWidget {
  const ProductListHomePage({Key? key}) : super(key: key);

  @override
  State<ProductListHomePage> createState() => _HomeStayListState();
}

class _HomeStayListState extends State<ProductListHomePage> {

  final List<Color> colors = [
    Colors.yellowAccent,
    Colors.green,
    Colors.purpleAccent,
    Colors.blueGrey,
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
      padding: EdgeInsets.only(top: Dimentions.height10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: Dimentions.width15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Các sản phẩm tại Mường Hoa", size: Dimentions.font25,),
                MiddleText(text: "Món ăn đặc sản và quà lưu niệm không thể bỏ qua", size: Dimentions.font16,)
              ],
            ),
          ),
          SizedBox(
            height: Dimentions.height50*5,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: colors.length,
                itemBuilder: (context, index){
                  EdgeInsets margin = EdgeInsets.zero;
                  if (index == 0) {
                    margin = EdgeInsets.only(left: Dimentions.width15);
                  }
                  return Container(
                    margin: margin,
                      child: const ProductItemsList()
                  );
                }),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: Dimentions.width130,
              height: Dimentions.height40,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProductPage()), // Chuyển hướng đến trang ProductPage
                );
              },
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
