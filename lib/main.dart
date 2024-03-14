import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:htx_mh/test_page/test_sukien_click.dart';
import 'package:htx_mh/views/widgets/navigations_menu.dart';
import 'package:htx_mh/views/pages/page_login.dart';
import 'package:htx_mh/views/pages/page_signup.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const NavigationMenu(),
      home: PageLogin(),
    );
  }
}
