
import 'package:flutter/material.dart';
import 'package:htx_mh/resources/colors.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/utills/text/big_text.dart';
import 'package:htx_mh/utills/text/middle_text.dart';
import 'package:htx_mh/views/widgets/custom_widgets/button_widget.dart';
import 'package:htx_mh/views/widgets/custom_widgets/circular_icon_buttom.dart';

import '../../../viewmodels/controllers/counter_controller.dart';


class BottomSheetHotelPage extends StatefulWidget {
  final Function(int, int) onChoose;
  final int initialRoom;
  final int initialGuest;
  final Function(int, int) onCounterChange;
  const BottomSheetHotelPage({Key? key,
    required this.onChoose,
    required this.initialRoom,
    required this.initialGuest,
    required this.onCounterChange,
  }) : super(key: key);

  @override
  State<BottomSheetHotelPage> createState() => _BottomSheetHotelPageState();
}

class _BottomSheetHotelPageState extends State<BottomSheetHotelPage> {
  late final CounterController counterRoom;
  late final CounterController counterGuest;

  @override
  void initState() {
    super.initState();
    _initializeCounterControllers();
  }

  void _initializeCounterControllers() {
    counterRoom = _createCounterController(widget.initialRoom);
    counterGuest = _createCounterController(widget.initialGuest);
  }

  CounterController _createCounterController(int initialValue) {
    final controller = CounterController(initialValue);
    controller.setUpdateStateCallback(() {
      setState(() {});
    });
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimentions.height50*5,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: Dimentions.width20),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: shadowColor,
                      width: 0.3,
                    )
                )
            ),
            height: Dimentions.height40*2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MiddleText(text: "Phòng",color: bcolor, size: Dimentions.font18,),
                SizedBox(
                  width: Dimentions.width50*5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     CircularIconButton(
                         icon: Icons.remove,
                       onPressed: () {
                         counterRoom.decrementCounter();
                       },
                     ),
                      BigText(text: counterRoom.counter.toString()),
                      CircularIconButton(
                        icon: Icons.add,
                        onPressed:() {
                          counterRoom.incrementCounter();
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: Dimentions.width20),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: shadowColor,
                      width: 0.3,
                    )
                )
            ),
            height: Dimentions.height40*2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MiddleText(text: "Người",color: bcolor, size: Dimentions.font18,),
                SizedBox(
                  width: Dimentions.width50*5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     CircularIconButton(
                         icon: Icons.remove,
                       onPressed: () {
                         counterGuest.decrementCounter();
                       },
                     ),
                      BigText(text: counterGuest.counter.toString()),
                      CircularIconButton(
                        icon: Icons.add,
                        onPressed: () {
                          counterGuest.incrementCounter();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Dimentions.width15),
            height: Dimentions.height40*2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget(
                    text: BigText(text: "Hủy bỏ", color: bcolor, size: Dimentions.font18,),
                    color: const Color(0xffe0e0e0ff),
                    height: Dimentions.height50,
                    width: Dimentions.width180,
                    borderRadius: Dimentions.radius10, onPressed: () {Navigator.of(context).pop();},
                ),
                ButtonWidget(
                    text: BigText(text: "Chọn", color: wcolor, size: Dimentions.font18,),
                    color: mainColor,
                    height: Dimentions.height50,
                    width: Dimentions.width180,
                    borderRadius: Dimentions.radius10, onPressed: () {
                  widget.onChoose(counterRoom.counter, counterGuest.counter);
                  Navigator.of(context).pop();
                },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  void _updateCounters(int room, int guest) {
    widget.onCounterChange(room, guest);
  }
}
