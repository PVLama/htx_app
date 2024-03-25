import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:htx_mh/consts/colors.dart';
// import 'package:htx_mh/pages/account_page.dart';
import 'package:htx_mh/resources/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';

import 'package:htx_mh/utills/text/big_text.dart';
import 'package:htx_mh/utills/text/middle_text.dart';
import 'package:htx_mh/utills/text/small_text.dart';
import 'package:htx_mh/resources/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/views/pages/account_page.dart';
import 'package:htx_mh/views/pages/home_page.dart';
import 'package:htx_mh/views/pages/page_login.dart';
import 'package:htx_mh/views/pages/page_signup.dart';
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
            () => Container(
              margin: EdgeInsets.only(top: Dimentions.height10 ,bottom: Dimentions.font10/2),
              child: NavigationBar(
                height: Dimentions.height55,
                elevation: 0,
                animationDuration: const Duration(milliseconds: 500),
                indicatorColor: Colors.green,
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) => controller.selectedIndex.value = index,
                destinations: [
                  NavigationDestination(icon: Icon(Icons.home_outlined, size: Dimentions.height25,), label: 'Trang chủ', selectedIcon: Icon(Icons.home,color: wcolor, size: Dimentions.height25,)),
                  NavigationDestination(icon: Icon(Icons.newspaper_outlined, size: Dimentions.height25,), label: 'Tin tức',selectedIcon: Icon(Icons.newspaper, size: Dimentions.height25, color: wcolor,)),
                  NavigationDestination(
                    icon: Badge(
                      smallSize: 10,
                        backgroundColor: redColor,
                        label: Text("+5", style: TextStyle(fontSize: Dimentions.font10),),
                        child: Icon(Icons.shopping_bag_outlined, size: Dimentions.height25)
                    ),
                    label: 'Giỏ hàng',
                    selectedIcon: Icon(Icons.shopping_bag,color: wcolor,size: Dimentions.height25)
              ),
                  NavigationDestination(icon: Icon(Icons.person_outline_outlined, size: Dimentions.height25), label: 'Tài khoản',selectedIcon: Icon(Icons.person,color: wcolor,size: Dimentions.height25
              )),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
     const HomePage(),
    Container(color: Colors.red,),
    Container(color: Colors.brown,),
    //  PageLogin(),
    // PageSignUp(),
    const AccountPage()
  ];
}