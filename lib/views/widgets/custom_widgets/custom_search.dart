import 'package:flutter/material.dart';

import '../../pages/detail_product_page.dart';

class CustomSearch extends SearchDelegate{

  List<String> allData = [
    "Mũ thổ cẩm",
    "Hoa quả",
    "Đồ thủ công",
    "Váy thổ cẩm",
    "Thịt trâu",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(
          onPressed: (){
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(
        query,
        style: TextStyle(fontSize: 100, fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    List<String> suggestions = allData.where((searchResult){
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index){
        final suggest = suggestions[index];
        return ListTile(
          title: Text(suggest),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(data: suggest)),
            );
            // query = suggest;
            // showResults(context);
          },
        );
        }
    );
  }
}