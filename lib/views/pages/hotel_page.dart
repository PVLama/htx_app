
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:htx_mh/utills/text/big_text.dart';
import 'package:htx_mh/utills/text/middle_text.dart';
import 'package:htx_mh/utills/text/small_text.dart';
import 'package:htx_mh/viewmodels/hotels_view_model.dart';
import 'package:htx_mh/views/widgets/hotel_page_widgets/app_bar_hotel_page.dart';

import '../../resources/app_assets.dart';
import '../../resources/colors.dart';
import '../../utills/responsives/dimentions.dart';
import '../widgets/item_widgets/homestay_items.dart';

class HotelPage extends StatelessWidget {
  HotelPage({Key? key}) : super(key: key);

  final HotelViewModel hotelViewModel = HotelViewModel();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgrMainColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          buildAppBar(),
          buildItem()
        ],
      ),
    );
  }

  Widget buildAppBar() => SliverAppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    title:  BigText(text: "Trang chủ"),
    centerTitle: true,
    automaticallyImplyLeading: false,
    elevation: 0,
    pinned: true,
    floating: false,
    stretch: true,
    backgroundColor: wcolor,
    expandedHeight: Dimentions.height50*8,
    toolbarHeight: Dimentions.height50,
    flexibleSpace: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final bool isTitleVisible = constraints.maxHeight > kToolbarHeight + Dimentions.height40*4;
        return PreferredSize(
          preferredSize: Size.fromWidth(Dimentions.width50*3),
          child: FlexibleSpaceBar(
            stretchModes: const [
              StretchMode.zoomBackground,
            ],
            title: AnimatedOpacity(
                opacity: isTitleVisible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 0),
             child: const AppBarHotelPage()
            ),
            centerTitle: true,
            titlePadding: EdgeInsets.only(top: Dimentions.height20 * 2),
            background: Stack(
              children: [
                Positioned.fill(
                  bottom: Dimentions.height45*5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimentions.radius10*2), bottomRight: Radius.circular(Dimentions.radius10*2)),
                      child: Image.asset(AppAssets.imgBanner, fit: BoxFit.cover)
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );

  Widget buildItem() => SliverPadding(
    padding: EdgeInsets.only(left: Dimentions.width15, right: Dimentions.width15, bottom: Dimentions.height15),
    sliver: SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
          childAspectRatio: 0.70
        ),
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return HomeStayItems(
              hotelModel: hotelViewModel.createHotels[index],
            marginRight: 1,
          );
        },
        childCount: hotelViewModel.createHotels.length,
      ),
    ),
  );
}
