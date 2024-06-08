import 'package:ewa_camp2_quizz_app/screens/quiz_app/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with TickerProviderStateMixin {
  late AnimationController logoAnimationController;
  late AnimationController wordAnimationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    logoAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    wordAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));

    logoAnimationController.forward();
    wordAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/background_image.jpg"))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                  ),
                  // Icon(
                  //   Icons.access_alarm_sharp,
                  //   size: 100,
                  //   color: Colors.red,
                  // ),

                  SlideTransition(
                    position:
                        Tween<Offset>(end: Offset(0, 0), begin: Offset(0, -5))
                            .animate(logoAnimationController),
                    child: Image.asset(
                      "images/quizLogo.webp",
                      height: 200,
                      width: 200,
                    ),
                  ),
                  FadeTransition(
                    opacity: wordAnimationController,
                    child: Text(
                      "Welcome with our quizz app",
                      style: TextStyle(
                          color: Color.fromARGB(255, 9, 178, 234),
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text("go to login page")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
