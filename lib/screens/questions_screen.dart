import 'package:ewa_camp2_quizz_app/screens/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notification_add),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.chat),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Text('2/10'),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text("Sports test"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  '2- What is the capital of KSA?',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              for (int i = 0; i < 10; i++)
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const ScoreScreen(),
                        ),
                      );
                    },
                    child: Text('Answer ${i + 1}')),
            ],
          ),
        ),
      ),
    );
  }
}
