import 'package:ewa_camp2_quizz_app/screens/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  Widget categoryContainer(
      {required Color color,
      required String text,
      required BuildContext context}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const QuestionsScreen(),
            ),
          );
        },
        child: Container(
          color: color,
          child: Center(
              child: Text(
            text,
            style: TextStyle(fontSize: 30),
          )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          categoryContainer(
              color: Colors.red, text: "Relegoun test", context: context),
          categoryContainer(
              color: Colors.blue, text: "Sports test", context: context),
          categoryContainer(
              color: Colors.green, text: "IQ test", context: context),
        ],
      ),
    );
  }
}
