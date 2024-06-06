import 'package:ewa_camp2_quizz_app/screens/quiz_app/category_screen.dart';
import 'package:flutter/material.dart';

final userNameController = TextEditingController();

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(22),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Log in ",
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    "enter you user name",
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: userNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'user name cant be empty';
                      } else if (value.length < 4) {
                        return 'user name must be greater than or equal to 4 characters';
                      }
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const CategoryScreen(),
                            ),
                          );
                        }
                      },
                      child: Text("Login"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
