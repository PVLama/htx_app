import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:htx_mh/data/products_data.dart';
import 'package:htx_mh/models/product_model.dart';
import 'package:htx_mh/resources/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/utills/text/big_text.dart';
import 'package:htx_mh/utills/text/middle_text.dart';
import 'package:htx_mh/views/widgets/custom_widgets/expandable_text_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/item_widgets/product_items.dart';


class DetailProductPage extends StatefulWidget {
  final ProductModel product;
  final String data;

  const DetailProductPage({Key? key,
    required this.product,
    required this.data
  }) : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {

  int _counter = 0;
  ProductData imagesData = ProductData();
  int activeIndex = 0;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
        toolbarHeight: Dimentions.height40*2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: wcolor, size: Dimentions.height30,) ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Dimentions.width10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined, color: wcolor, size: Dimentions.height25,),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: mainColor,
        title: BigText(text: "Chi tiết sản phẩm", size: Dimentions.font25 ,color: wcolor,),
      ),
      bottomNavigationBar: buildBottomBar(),
      body: CustomScrollView(
        slivers: [
          buildSlidePic(),
          buildBody(),
        ]
      ),
    );
  }

  Widget buildSlidePic() => SliverToBoxAdapter(
    child: Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: Dimentions.height45*4,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            onPageChanged: (index, reason) => setState(() => activeIndex = index),
          ),
          itemCount: imagesData.images.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            final image = imagesData.imageDetail[index];
            return buildImage(image, index);
          },
        ),
        SizedBox(height: Dimentions.height10,),
        buildIndicator(),
      ],
    ),
  );

  Widget buildBody() => SliverToBoxAdapter(
  child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimentions.width10, vertical: Dimentions.height15),
          padding: EdgeInsets.only(left: Dimentions.width10, top: Dimentions.height10/2, bottom: Dimentions.height10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(Dimentions.radius10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: widget.product.productName, size: Dimentions.font25,),
              MiddleText(text: widget.product.price, size: Dimentions.font20, color: redColor,),
              MiddleText(text: "Nhãn hiệu: ${widget.product.brand}", size: Dimentions.font20,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimentions.width10),
          padding: EdgeInsets.only(left: Dimentions.width10, top: Dimentions.height10/2, bottom: Dimentions.height10, right: Dimentions.width10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(Dimentions.radius10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MiddleText(text: "Giới thiệu:", size: Dimentions.font20),
              SizedBox(
                height: Dimentions.height50*4,
                child: SingleChildScrollView(
                  child: ExpandableTextWidget(text: widget.product.introduce),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: Dimentions.height20, bottom: Dimentions.height10),
          color: Color(0xFFbcb8b1),
          height: Dimentions.height30*2,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimentions.width15),
                height: Dimentions.height15/5, width: Dimentions.width35*2, color: Color(0xFF8a817c),),
              MiddleText(text: "Sản phẩm liên quan", size: Dimentions.font20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimentions.width15),
                height: Dimentions.height15/5, width: Dimentions.width35*2, color: Color(0xFF8a817c),),
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
              itemCount: productData.nameProducts.length,
              itemBuilder: (context, index){
                EdgeInsets margin = EdgeInsets.zero;
                if (index == 0) {
                  margin = EdgeInsets.only(left: Dimentions.width15);
                }
                return Container(
                    margin: margin,
                    child: ProductItemsList(product: widget.product,)
                );
              }),
        )
      ],
    ),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: 5,
    effect: WormEffect(
      activeDotColor: Colors.black,
      dotColor: Colors.grey,
      dotHeight: Dimentions.height10,
      dotWidth: Dimentions.width10,
    ),
  );

  Widget buildImage(Image image, int index) => SizedBox(
    width: double.infinity,
    child: imagesData.imageDetail[index],
  );

  Widget buildBottomBar() => Container(
    height: Dimentions.height50*2,
    decoration: BoxDecoration(
        color: const Color(0xffe6e4e0),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimentions.radius10*3), topRight: Radius.circular(Dimentions.radius10*3) )
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: Dimentions.width25),
          height: Dimentions.height50,
          decoration: BoxDecoration(
              color: wcolor,
              borderRadius: BorderRadius.circular(Dimentions.radius10)
          ),
          child: Row(
            children: [
              IconButton(
                  onPressed: (){
                    if (_counter > 0) {
                      _counter--;
                    }
                  },
                  icon: Icon(Icons.remove, size: Dimentions.height25,)
              ),
              MiddleText(text: _counter.toString(), size: Dimentions.font20,),
              IconButton(
                  onPressed: (){
                    _counter++;
                  },
                  icon: Icon(Icons.add, size: Dimentions.height25,),
              )
            ],
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.only(right: Dimentions.width15),
            width: Dimentions.width45*3,
            height: Dimentions.height35*2,
            decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(Dimentions.radius10*2)
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: Dimentions.height35,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: wcolor,
                        width: 1
                      )
                    )
                  ),
                  child: Center(child: MiddleText(text: "80.000.000" + "₫", size: Dimentions.font18, color: wcolor,)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Dimentions.height10/2),
                  child: BigText(text: "Add to cart", color: wcolor, size: Dimentions.font18,),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}