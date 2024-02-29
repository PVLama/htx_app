
import 'package:flutter/material.dart';
import 'package:htx_mh/consts/colors.dart';
import 'package:htx_mh/utills/text/big_text.dart';
import 'package:htx_mh/utills/text/middle_text.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  int current = 0;

  List<Widget> _texts = [
    MiddleText(text: "Tất cả",),
    MiddleText(text: "Đặc sản",),
    MiddleText(text: "Trang phục",),
    MiddleText(text: "Hoa Quả",),
    MiddleText(text: "đá",),
    MiddleText(text: "chè",),
  ];

  List<Widget> _pages = [
    Icon(Icons.add, size: 50),
    Icon(Icons.access_time_rounded, size: 50),
    Icon(Icons.abc, size: 50),
    Icon(Icons.ac_unit_rounded, size: 50),
    Icon(Icons.query_stats, size: 50),
    Icon(Icons.star, size: 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wcolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 130,
        title: Column(
          children: [
            BigText(text: "Sản Phẩm", color: wcolor,size: 30,),
            MiddleText(text: "tại HTX Mường Hoa", color: wcolor, size: 18,),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                color: wcolor,
                borderRadius: BorderRadius.circular(15)
              ),
            )
          ],
        ),
        backgroundColor: Color(0xFF377A46),
      ),
      body: Column(
        children: [
          buildTapBar(),
          buildBody()
        ],
      ),
    );
  }
  Widget buildTapBar() => Container(
    color: Colors.transparent,
    margin: EdgeInsets.all(5),
    width: MediaQuery.of(context).size.width,
    child: SizedBox(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: _texts.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return Column(
              children: [
                GestureDetector(
                  onTap: (){
                    setState((){
                      current = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: const EdgeInsets.all(5),
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: current == index
                          ? Color(0xFFb3d89c).withOpacity(0.5)
                          : wcolor,
                      border: Border.all(
                          color: Color(0xFF3f7d20),
                          strokeAlign: BorderSide.strokeAlignInside,
                          width: 2,
                          style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:[
                        current == index
                            ? BoxShadow(
                          color: Color(0xFFb3d89c).withOpacity(0.5),
                          blurRadius: 4,
                          offset: Offset(0, 6),
                          spreadRadius: 0,
                        )
                            : BoxShadow(color: Colors.transparent),
                      ]
                    ),
                    child: Center(
                      child: _texts[index],
                    ),
                  ),
                ),
                Visibility(
                    visible: current == index,
                    child: Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: bcolor
                      ),
                    ),
                )
              ],
            );
          }
      ),
    ),
  );

  Widget buildBody() => Container(
    color: Colors.red,
    margin: EdgeInsets.all(5),
    width: 200,
    height: 200,
    child: _pages[current]
  );
}
