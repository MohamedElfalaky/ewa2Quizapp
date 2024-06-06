import 'package:ewa_camp2_quizz_app/data/cubits/cubit/get_news_cubit.dart';
import 'package:ewa_camp2_quizz_app/data/models/get_news_model.dart';
import 'package:ewa_camp2_quizz_app/data/repositories/get_news_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  // GetNewsModel? response;

  // int state = 0;

  // 0 = initial
  // 1 = loading
  // 2 = success
  // 3 = error

  // Future getNewsInUI() async {
  //   try {
  //     setState(() {
  //       state = 1;
  //     });
  //     response = await GetNewsRepo().getNews();

  //     setState(() {
  //       state = 2;
  //     });
  //   } catch (e) {
  //     setState(() {
  //       state = 3;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
            padding: EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      context.read<GetNewsCubit>().getNewsInUI();
                    },
                    child: Text("Get news")),
                SizedBox(
                  height: 40,
                ),
                BlocBuilder<GetNewsCubit, GetNewsState>(
                  builder: (context, state) {
                    if (state is GetNewsInitial) {
                      return Text("Please click the button to get news");
                    } else if (state is GetNewsLoading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is GetNewsSuccess) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int i = 0;
                                i < state.response!.articles.length;
                                i++)
                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(state.response!
                                                .articles[i]!.urlToImage ??
                                            ""))),
                                height: 300,
                                width: 321,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.response!.articles[i]!.author ?? "",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      state.response!.articles[i]!
                                              .description ??
                                          "",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 31,
                                    ),
                                    // Text(
                                    //   "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                                    //   style: TextStyle(
                                    //       color: Color(0xffFFFFFF), fontSize: 12),
                                    // ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      );
                    } else {
                      return Text("Something went wrong");
                    }
                  },
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            )),
      ),
    );
  }
}
