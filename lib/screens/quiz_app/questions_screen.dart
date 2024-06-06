import 'package:ewa_camp2_quizz_app/data/questions_and_answers.dart';
import 'package:ewa_camp2_quizz_app/screens/quiz_app/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsScreen extends StatefulWidget {
  List questionsList;
  Color testThemeColor;
  String testName;
  QuestionsScreen(
      {super.key,
      required this.questionsList,
      required this.testName,
      required this.testThemeColor});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentIndex = 0;
  int currentScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Text(
                '${currentIndex + 1}/${widget.questionsList.length.toString()}'),
          )
        ],
        centerTitle: true,
        backgroundColor: widget.testThemeColor,
        title: Text(widget.testName),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  widget.questionsList[currentIndex]['questionText'],
                  style: TextStyle(fontSize: 20),
                ),
              ),
              for (int i = 0;
                  i <
                      (widget.questionsList[currentIndex]['answers'] as List)
                          .length;
                  i++)
                ElevatedButton(
                    onPressed: () {
                      currentScore = currentScore +
                          (widget.questionsList[currentIndex]['answers'][i]
                              ['score'] as int);

                      if (currentIndex == (widget.questionsList.length - 1)) {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => ScoreScreen(
                              currentScore: currentScore,
                              numOfQuestion: widget.questionsList.length,
                            ),
                          ),
                        );
                      } else {
                        setState(() {
                          // currentScore++;

                          currentIndex++;
                        });
                      }

                      print("current score is : $currentScore");
                    },
                    child: Text(widget.questionsList[currentIndex]['answers'][i]
                        ['ans'])),
            ],
          ),
        ),
      ),
    );
  }
}
