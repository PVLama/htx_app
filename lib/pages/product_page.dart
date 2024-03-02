
import 'package:flutter/material.dart';
import 'package:htx_mh/consts/colors.dart';
import 'package:htx_mh/pages/home_page.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/utills/text/big_text.dart';
import 'package:htx_mh/utills/text/middle_text.dart';
import 'package:htx_mh/widgets/custom_widgets/custom_search.dart';
import 'package:htx_mh/widgets/productpage_widgets/all_product.dart';
import 'package:htx_mh/widgets/productpage_widgets/all_product_list.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  int current = 0;

  final List<Widget> _texts = [
    MiddleText(text: "Tất cả",),
    MiddleText(text: "Đặc sản",),
    MiddleText(text: "Trang phục",),
    MiddleText(text: "Hoa Quả",),
    MiddleText(text: "Đồ uống",),
    MiddleText(text: "Đồ thủ công",),
  ];

  final List<Widget> _pages = [
    const AllProducts(),
    ProductList(),
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
        toolbarHeight: Dimentions.height40*2,
        title: Padding(
          padding: EdgeInsets.only(top: Dimentions.height10),
          child: Column(
            children: [
              BigText(text: "Sản Phẩm", color: wcolor,size: Dimentions.font10*3,),
              MiddleText(text: "tại HTX Mường Hoa", color: wcolor, size: Dimentions.font18,),
            ],
          ),
        ),
        backgroundColor: const Color(0xFF377A46),
        leading: IconButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()), // Chuyển hướng đến trang ProductPage
                  );
                },
                icon: Icon(Icons.arrow_back, size: Dimentions.height30, color: wcolor,),
        ),
        actions: [
          IconButton(
              onPressed: (){
                showSearch(
                    context: context,
                    delegate: CustomSearch());
              },
              icon: Icon(Icons.search_rounded, size: Dimentions.height30, color: wcolor,))
        ],
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
    margin: EdgeInsets.symmetric(horizontal: Dimentions.width10, vertical: Dimentions.height10/2),
    width: MediaQuery.of(context).size.width,
    child: SizedBox(
      height: Dimentions.height35*2,
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
                    duration: const Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: Dimentions.width10/2, vertical: Dimentions.height10/2),
                    width: Dimentions.width50*2,
                    height: Dimentions.height40,
                    decoration: BoxDecoration(
                      color: current == index
                          ? const Color(0xFFb3d89c).withOpacity(0.5)
                          : wcolor,
                      border: Border.all(
                          color: const Color(0xFF3f7d20),
                          strokeAlign: BorderSide.strokeAlignInside,
                          width: Dimentions.width10/5,
                          style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(Dimentions.radius10),
                      boxShadow:[
                        current == index
                            ? BoxShadow(
                          color: Color(0xFFb3d89c).withOpacity(0.5),
                          blurRadius: 4,
                          offset: const Offset(0, 6),
                          spreadRadius: 0,
                        )
                            : const BoxShadow(color: Colors.transparent),
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
                      height: Dimentions.height30/5,
                      width: Dimentions.width30/5,
                      decoration: const BoxDecoration(
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

  Widget buildBody() => Expanded(
    child: _pages[current]
  );
}
