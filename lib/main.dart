import 'package:ewa_camp2_quizz_app/data/cubits/cubit/get_news_cubit.dart';
import 'package:ewa_camp2_quizz_app/screens/quiz_app/questions_screen.dart';
import 'package:ewa_camp2_quizz_app/screens/quiz_app/start_screen.dart';
import 'package:ewa_camp2_quizz_app/screens/news_app/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetNewsCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        home: NewsScreen(),
      ),
    );
  }
}
