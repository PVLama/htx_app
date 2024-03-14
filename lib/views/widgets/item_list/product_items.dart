import 'package:flutter/material.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/utills/text/big_text.dart';
import 'package:htx_mh/views/pages/detail_product_page.dart';

import '../../../data/products_data.dart';
import '../../../resources/app_assets.dart';
import '../../../resources/colors.dart';
import '../../../utills/text/middle_text.dart';
import '../../../utills/text/small_text.dart';

class ProductItemsList extends StatelessWidget {
  final double containerWidth;
  final double marginRight;
  final double fontSize;
  final int maxLines;
  final String productName;

  const ProductItemsList({Key? key,
    required this.productName,
    this.containerWidth = 0,
    this.marginRight = 0,
    this.fontSize = 0,
    this.maxLines = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailPage(data: productName,)),);
      },
      child: Container(
        width: containerWidth == 0? Dimentions.width50*3:containerWidth,
        margin: EdgeInsets.only(right: marginRight == 0? Dimentions.width15:marginRight, top: Dimentions.height10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child:
              ClipRRect(
                borderRadius:  BorderRadius.all(Radius.circular(Dimentions.radius10/2)),
                child: Container(
                  height: Dimentions.height135,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.imgHomeStay,),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Dimentions.height10/2, left: Dimentions.width10/2, right: Dimentions.width10),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: Dimentions.width50*3,
                          child: BigText(text: productName,size: fontSize == 0? Dimentions.font16:fontSize, color: bcolor, maxLines: maxLines == 0? 1: maxLines,)
                      ),
                      SizedBox(height: Dimentions.height10/2,),
                      Row(
                        children: [
                          Row(
                              children: List.generate(5, (index) => SizedBox(
                                height: Dimentions.height15,
                                width: Dimentions.width15,
                                child: Image.asset(AppAssets.icStars,),
                              ),
                              ),
                          ),
                          SmallText(text: "(1234)", color: bcolor,)
                        ],
                      ),
                      SizedBox(height: Dimentions.height10,),
                      MiddleText(text: "650.000" + "₫", size: Dimentions.font18,)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
