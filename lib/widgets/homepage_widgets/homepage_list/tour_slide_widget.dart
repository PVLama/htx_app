import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:htx_mh/consts/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'bottom_slide.dart';

class TourSlide extends StatefulWidget {
  const TourSlide({Key? key}) : super(key: key);

  @override
  State<TourSlide> createState() => _TourSlideState();
}
class _TourSlideState extends State<TourSlide> {

  int activeIndex = 0;
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.yellowAccent,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Dimentions.height20,),
      child: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
                height: Dimentions.carouselOptions,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
                enlargeCenterPage: true,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
            itemCount: colors.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              final color = colors[index];
              return buildImage(color, index);
            },
          ),
          SizedBox(height: Dimentions.height10,),
          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildImage(Color color, int index) => Stack(
    children: [
      Container(
        height: Dimentions.height40*4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimentions.radius10),
        color: color,
      ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.only(left: Dimentions.width15),
          height: Dimentions.height20*5,
          width: Dimentions.width230,
          margin: EdgeInsets.only(bottom: Dimentions.height10),
          decoration: BoxDecoration(
            // color: Colors.white,
              borderRadius: BorderRadius.circular(Dimentions.radius10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFC7C8CC),
                ),
                BoxShadow(
                  color: wcolor,
                  blurRadius: 3,
                  spreadRadius: -0.1,
                )
              ],
      ),
          child: const BottomSlide(),
        ),
      ),
    ],
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: colors.length,
    effect: ExpandingDotsEffect(
      activeDotColor: Colors.black,
      dotColor: Colors.grey,
      dotHeight: Dimentions.height8,
      dotWidth: Dimentions.width10,
    ),
  );
}
