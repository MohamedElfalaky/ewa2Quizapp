import 'package:ewa_camp2_quizz_app/screens/quiz_app/login_screen.dart';
import 'package:ewa_camp2_quizz_app/screens/quiz_app/start_screen.dart';
import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  final int currentScore;
  final int numOfQuestion;
  ScoreScreen(
      {super.key, required this.currentScore, required this.numOfQuestion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                      TextSpan(text: 'Nice, '),
                      TextSpan(
                          text: userNameController.text,
                          style: TextStyle(fontSize: 28, color: Colors.red)),
                      TextSpan(text: ' you have finished the test'),
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Your score is $currentScore/$numOfQuestion",
                style: TextStyle(color: Color(0xff0080FF)),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const StartScreen(),
                      ),
                    );
                  },
                  child: Text('Play again'))
            ],
          ),
        ),
      ),
    );
  }
}
