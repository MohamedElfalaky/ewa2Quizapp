import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(22),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/manImage.png'))),
                    height: 240,
                    width: 321,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "by Ryan Browne",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Crypto investors should be prepared to lose all their money, BOE governor says",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 31,
                        ),
                        Text(
                          "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                          style:
                              TextStyle(color: Color(0xffFFFFFF), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          )),
    );
  }
}
