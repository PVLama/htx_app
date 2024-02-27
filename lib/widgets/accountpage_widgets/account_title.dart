import 'package:flutter/material.dart';
import 'package:htx_mh/consts/app_assets.dart';
import 'package:htx_mh/utills/text/big_text.dart';
import 'package:htx_mh/utills/text/small_text.dart';

import '../../consts/colors.dart';
import '../../utills/responsives/dimentions.dart';

class AccountTitle extends StatelessWidget {
  final List<Image> icons = [
    Image.asset(AppAssets.icHeartOutLine),
    Image.asset(AppAssets.icInvoice, height: Dimentions.height35, width: Dimentions.width35,),
    Image.asset(AppAssets.icHeartOutLine),
  ];
  final List<Widget> texts = [
    SmallText(text: "Yêu thích", color: bcolor, size: Dimentions.font16,),
    SmallText(text: "Đơn hàng", color: bcolor, size: Dimentions.font16,),
    SmallText(text: "Thông báo", color: bcolor, size: Dimentions.font16,)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: wcolor,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(40)
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Phạm Văn Lâm"),
                  InkWell(
                    onTap: (){
                      print('Text clicked!');
                    },
                    child: Row(
                        children: [
                        SmallText(text: "Thông tin của tôi" ,),
                        Icon(Icons.chevron_right, color: smallTextDefault, size: Dimentions.height20,)
                        ],
                      ),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: Dimentions.height20),
            padding: EdgeInsets.symmetric(horizontal: Dimentions.height20),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buildTitleAccount(icons, texts)
            ),
          )
        ],
      ),
    );
  }
  List<Widget> buildTitleAccount(List<Image> icons, List<Widget> texts) {
    final iconsAndTexts = List<Widget>.generate(
      icons.length,
          (index) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icons[index],
              texts[index], // Sử dụng văn bản từ danh sách texts
        ],
      ),
    );
    return iconsAndTexts;
  }
}
