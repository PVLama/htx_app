import 'package:flutter/material.dart';
import 'package:htx_mh/consts/app_assets.dart';
import 'package:htx_mh/consts/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/utills/text/small_text.dart';

import '../../../pages/product_page.dart';

class FlexibleTitleHome extends StatelessWidget {
  final List<Image> icons = [
    Image.asset(AppAssets.gifTour, height: Dimentions.height30, width: Dimentions.width30,),
    Image.asset(AppAssets.gifHouse, height: Dimentions.height30, width: Dimentions.width30,),
    Image.asset(AppAssets.imgShoppingBag, height: Dimentions.height30, width: Dimentions.width30,),
    Image.asset(AppAssets.imgGuide, height: Dimentions.height30, width: Dimentions.width30,),
  ];
  final List<Widget> texts = [
    SmallText(text: "Tour",size: Dimentions.font10, color: bcolor,),
    SmallText(text: "Home stay", size: Dimentions.font10, color: bcolor),
    SmallText(text: "Sản Phẩm", size: Dimentions.font10, color: bcolor),
    SmallText(text: "Cẩm nang", size: Dimentions.font10, color: bcolor),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Dimentions.height10),
      margin: EdgeInsets.only(bottom: Dimentions.height10),
      width: Dimentions.widthFlexibleTitle,
      height: Dimentions.height30*2,
      decoration: ShapeDecoration(
        color: wcolor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.30,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Color(0xFF9E9E9E),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: shadowFlexibleBar,
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: buildFlexibleTitle(context, icons, texts),
      ),
    );
  }
  List<Widget> buildFlexibleTitle(BuildContext context, List<Image> icons, List<Widget> texts) {
    final iconsAndTexts = List<Widget>.generate(
      icons.length,
          (index) => InkWell(
            onTap: (){
              switch (index) {
                case 0:
                  print('Trang tour');
                  break;
                case 1:
                  print('Trang HomeStay');
                  break;
                case 2:
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProductPage()), // Chuyển hướng đến trang ProductPage
                  );
                  break;
                case 3:
                  print('Trang cẩm nang');
                  break;
                default:
                  break;
              }
            },
            child: Column(
        children: [
              icons[index],
              texts[index], // Sử dụng văn bản từ danh sách texts
        ],
      ),
          ),
    );
    return iconsAndTexts;
  }
}
