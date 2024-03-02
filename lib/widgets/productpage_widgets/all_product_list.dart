import 'package:flutter/material.dart';
import 'package:htx_mh/utills/responsives/dimentions.dart';
import 'package:htx_mh/widgets/item_list/product_items.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.green,
          margin: EdgeInsets.all(Dimentions.width10/2),
            child: Center(
                child: ProductItemsList(
                  containerWidth: 180,
                  marginRight: 1,
                  fontSize: Dimentions.font18,
            ))
        );
      },);
  }
}
