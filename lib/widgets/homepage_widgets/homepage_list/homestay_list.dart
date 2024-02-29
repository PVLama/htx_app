import 'package:flutter/material.dart';
import 'package:htx_mh/consts/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/utills/text/small_text.dart';

import '../../item_list/homestay_items.dart';

class HomeStayList extends StatefulWidget {
  const HomeStayList({Key? key}) : super(key: key);

  @override
  State<HomeStayList> createState() => _HomeStayListState();
}

class _HomeStayListState extends State<HomeStayList> {

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
      padding: EdgeInsets.only(top: Dimentions.height20, left: Dimentions.width15),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: Dimentions.width50*2,
              child: InkWell(
                onTap: (){
                  print("texxt...");
                },
                child: Row(
                  children: [
                    SmallText(text: "Xem thêm", size: Dimentions.font15 ,color: wcolor,),
                    Icon(Icons.chevron_right, color: wcolor,)
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: Dimentions.height260,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: Dimentions.height20),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: colors.length,
                itemBuilder: (context, index){
                  return const HomeStayItems();
            }),
          )
        ],
      ),
    );
  }

}
