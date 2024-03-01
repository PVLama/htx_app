import 'package:flutter/material.dart';
import 'package:htx_mh/consts/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimentions.height10),
      child: TextField(
        textAlign: TextAlign.left,
        maxLines: 1,
        style: TextStyle(fontSize: Dimentions.font18,),
        controller: _controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: Dimentions.height10),
          filled: true,
          isCollapsed: true,
          isDense: true,
          fillColor: wcolor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(Dimentions.radius10)
            ),
          hintText: "Tìm kiếm...",
          hintStyle: TextStyle(fontSize: Dimentions.font16,),
          prefixIcon: Icon(Icons.search_outlined,size: Dimentions.height25,color: bcolor,),
          suffixIcon: IconButton(
            icon: Icon(Icons.clear, color: bcolor,size: Dimentions.height25,),
            onPressed: (){
              _controller.clear();
            },
          )
        ),
      ),
    );
  }
}

