import 'package:flutter/material.dart';
import 'package:htx_mh/utills/text/big_text.dart';

class GuideTourPage extends StatelessWidget {
  const GuideTourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BigText(text: "GuideTourPage"),),
    );
  }
}
