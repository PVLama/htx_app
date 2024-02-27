import 'package:flutter/material.dart';
import 'package:htx_mh/consts/app_assets.dart';
import 'package:htx_mh/consts/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/widgets/homepage_widgets/homepage_list/homestay_list.dart';

import '../widgets/homepage_widgets/homepage_list/book_guide_list.dart';
import '../widgets/homepage_widgets/homepage_list/flexible_title_home.dart';
import '../widgets/homepage_widgets/homepage_list/product_list.dart';
import '../widgets/homepage_widgets/homepage_list/tour_slide_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: CustomScrollView(
      slivers: [
        homeAppBar(),
        tourSliders(),
        homeStayList(),
        productList(),
        bookGuide(),
      ],
    ),
  );

  Widget homeAppBar() => SliverAppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    pinned: true,
    floating: false,
    stretch: true,
    backgroundColor: wcolor,
    expandedHeight: Dimentions.expandedHeight,
    toolbarHeight: Dimentions.toolbarHeight,
    flexibleSpace: Stack(
      children: [
        Positioned.fill(
          bottom: Dimentions.height35*2,
          child: FlexibleSpaceBar(
            background: Image.asset(AppAssets.imgBanner, fit: BoxFit.cover,),
          ),
        ),
        FlexibleSpaceBar(
          title: FlexibleTitleHome(),
          centerTitle: true,
          titlePadding: EdgeInsets.only(top: Dimentions.height20*2),
        ),
      ],
    ),
  );

  Widget bookGuide() => SliverToBoxAdapter(
    child: Container(
        padding: EdgeInsets.only(left: Dimentions.width15, right: Dimentions.width15, top: Dimentions.height20, bottom: Dimentions.height20),
        width:MediaQuery.of(context).size.width,
        child: const BookGuideList(),
    )
  );

  Widget tourSliders() => SliverToBoxAdapter(
    child: Container(
      width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: Dimentions.height20),
        child: const TourSlide(),
    )
  );

  Widget homeStayList() => SliverToBoxAdapter(
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xAFFF2A5D), Color(0xFFFF295C)],
        ),
      ),
      child: const HomeStayList(),
    ),
  );

  Widget productList() => SliverToBoxAdapter(
    child: Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: Dimentions.height15),
      child: const ProductListHomePage(),
    ),
  );

}
