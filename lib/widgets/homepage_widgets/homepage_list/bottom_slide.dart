import 'package:flutter/material.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/utills/text/big_text.dart';
import 'package:htx_mh/utills/text/middle_text.dart';
import 'package:htx_mh/utills/text/small_text.dart';

import '../../../consts/colors.dart';

class BottomSlide extends StatelessWidget {
  const BottomSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Expanded(child: BigText(text: "Tour 2 ngày 1 đêm", size: Dimentions.font20,))
          ],
        ),
        Row(
          children: [
            SizedBox(child: Icon(Icons.location_on, color: iconsColors, size: Dimentions.font20,)),
            Expanded(child: MiddleText(text: "Bản Pho, Hầu Thào, Lào Cai ádfadsf", ))
          ],
        ),
        Row(
          children: [
            SizedBox(child: Icon(Icons.star,color: iconsStarColors,size: Dimentions.font20),),
            Expanded(child: SmallText(text: "4.5", color: smallTextColors, )),
            // SizedBox(width: Dimentions.width10,),
            SizedBox(child: Icon(Icons.chat_rounded,color: iconsColors,size: Dimentions.font20),),
            Expanded(child: SmallText(text: "4.5", color: smallTextColors, ))
          ],
        )
      ],
    );
  }
}
