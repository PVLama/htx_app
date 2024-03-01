import 'package:flutter/material.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/utills/text/big_text.dart';

import '../../../consts/app_assets.dart';
import '../../../consts/colors.dart';
import '../../../utills/text/middle_text.dart';
import '../../../utills/text/small_text.dart';

class ProductItemsList extends StatelessWidget {
  const ProductItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimentions.width50*3,
      margin: EdgeInsets.only(right: Dimentions.width15, top: Dimentions.height10),
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
                        child: BigText(text: "Thịt trâu gác bếp",size: Dimentions.font16, color: bcolor, maxLines: 1,)
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
    );
  }
}
