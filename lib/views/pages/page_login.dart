import '../pages/page_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../pages/page_signup.dart';
// import '../ultils/colors.dart';
import 'package:htx_mh/utills/text/big_text.dart';
import 'package:htx_mh/utills/text/middle_text.dart';
import 'package:htx_mh/utills/text/small_text.dart';
import 'package:htx_mh/resources/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
// import '../utills/text/middle_text.dart';
// import '../utills/text/small_text.dart';
// import '../utills/responsives/dimentions.dart';
import 'package:flutter/material.dart';

class PageLogin extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();
  PageLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brgLoginColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimentions.width10*2, right: Dimentions.width10*2,
                top: Dimentions.height135, bottom: Dimentions.height40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: Dimentions.height10*2),
                      color: Colors.red,
                      height: Dimentions.height40,
                      width: Dimentions.width10*10,
                    ),
                    MiddleText(text: "HỢP TÁC XÃ MƯỜNG THANH", size: Dimentions.font20,),
                    SizedBox(height: Dimentions.height10,),
                    SmallText(text: "Đăng nhập để tiếp tục", color: Colors.white, size: Dimentions.font16,),
                  ],
                ),
                SizedBox(height: Dimentions.height40,),
                Column(
                  children: [
                    TextField(
                      controller: _textController,
                      maxLines: 1,
                      style: TextStyle(fontSize: Dimentions.font16),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: Dimentions.height10/2),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(Dimentions.radius10/2)
                        ),
                        filled: true,
                        fillColor: wcolor,
                        hintText: "Email",
                        hintStyle: TextStyle(fontSize: Dimentions.font15, color: bcolor.withOpacity(0.4)),
                        prefixIcon: Icon(Icons.email_outlined,color: bcolor.withOpacity(0.5), size: Dimentions.font20,),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear, color: bcolor.withOpacity(0.5)),
                          iconSize: Dimentions.font20,
                          onPressed: (){
                            _textController.clear();
                            },
                        ),
                      ),
                    ),
                    SizedBox(height: Dimentions.height10,),
                    TextField(
                      maxLines: 1,
                      style: TextStyle(fontSize: Dimentions.font16),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: Dimentions.height10/2),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(Dimentions.radius10/2)
                        ),
                        filled: true,
                        fillColor: wcolor,
                        hintText: "Mật khẩu",
                        hintStyle: TextStyle(fontSize: Dimentions.font15, color: bcolor.withOpacity(0.4)),
                        prefixIcon: Icon(Icons.lock_outline,color: bcolor.withOpacity(0.5), size: Dimentions.font20,),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye_outlined, color: bcolor.withOpacity(0.5),),
                          iconSize: Dimentions.font20,
                          onPressed: (){},
                        ),
                      ),
                    ),
                    SizedBox(height: Dimentions.height40,),
                    ConstrainedBox(
                      constraints:
                      BoxConstraints.tightFor(height: Dimentions.height25*2),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(Dimentions.radius10)
                            ),
                          ),
                            onPressed: (){},
                            child: Center(child: MiddleText(text: "Đăng Nhập", size: Dimentions.font18, color: Colors.green[800],))
                        ),
                      ),
                    SizedBox(height: Dimentions.height25,),
                    TextButton(onPressed: () {},
                      child: MiddleText(text: "Quên mật khẩu?", size: Dimentions.font16, color: wcolor,)),
                    SizedBox(height: Dimentions.height135,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmallText(text: "Bạn chưa có tài khoản? ", size: Dimentions.font16, color: wcolor,),
                        TextButton(
                            onPressed: () => Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) => PageSignUp())),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.only(right: Dimentions.width10),
                                ),
                            ),
                            child: MiddleText(text: "Đăng kí", size: Dimentions.font16, color: wcolor))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ]
      )
    );
  }
}

