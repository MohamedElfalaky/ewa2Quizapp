import 'package:ewa_camp2_quizz_app/data/questions_and_answers.dart';
import 'package:ewa_camp2_quizz_app/screens/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  Widget categoryContainer(
      {required Color color,
      required String text,
      required BuildContext context,
      required List questionList}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuestionsScreen(
                questionsList: questionList,
                testName: text,
                testThemeColor: color,
              ),
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
              color: Colors.red,
              text: "religion test",
              context: context,
              questionList: religionTest),
          categoryContainer(
              color: Colors.blue,
              text: "Sports test",
              context: context,
              questionList: sportsTest),
          categoryContainer(
              color: Colors.green,
              text: "IQ test",
              context: context,
              questionList: iqTest),
        ],
      ),
    );
  }
}
