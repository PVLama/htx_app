import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String data;

  const DetailPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Text(
          data,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}