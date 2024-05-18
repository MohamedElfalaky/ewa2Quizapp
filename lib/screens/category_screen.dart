import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  Widget categoryContainer({required Color color, required String text}) {
    return Expanded(
      child: Container(
        color: color,
        child: Center(child: Text(text)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          categoryContainer(color: Colors.red, text: "اختبار ديني "),
          categoryContainer(color: Colors.blue, text: "اختبار رياضي "),
          categoryContainer(color: Colors.green, text: "اختبار ذكاء "),
        ],
      ),
    );
  }
}
