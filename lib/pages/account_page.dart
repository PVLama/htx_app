import 'package:flutter/material.dart';
import 'package:htx_mh/widgets/accountpage_widgets/account_title.dart';

import '../consts/colors.dart';
import '../utills/responsives/dimentions.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: accountPageBgrColor,
    body: CustomScrollView(
      slivers: [
        titleAccountPage()
      ],
    ),
  );

  Widget titleAccountPage() => SliverToBoxAdapter(
    child: Container(
      margin: EdgeInsets.only(top: 50, left: 20, right: 20),
      child: AccountTitle(),
    ),
  );

}
