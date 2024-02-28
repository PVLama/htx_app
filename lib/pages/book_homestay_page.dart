import 'package:flutter/material.dart';
import 'package:htx_mh/pages/account_page.dart';

import '../consts/colors.dart';
import '../utills/responsives/dimentions.dart';

class BookHomeStayPage extends StatefulWidget {
  const BookHomeStayPage({Key? key}) : super(key: key);

  @override
  State<BookHomeStayPage> createState() => _TourPageState();
}

class _TourPageState extends State<BookHomeStayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          accountAppBar()
        ],
      ),
    );
  }
  Widget accountAppBar() => SliverAppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    pinned: false,
    backgroundColor: wcolor,
    expandedHeight: Dimentions.expandedHeight,
    title: AccountPage(),
  );
}
