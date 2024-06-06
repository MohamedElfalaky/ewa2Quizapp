import 'package:ewa_camp2_quizz_app/data/models/get_news_model.dart';
import 'package:dio/dio.dart';

class GetNewsRepo {
  final dio = Dio();

  Future<GetNewsModel?> getNews() async {
    try {
      final response = await dio.get(
        'https://newsapi.org/v2/everything?q=tesla&from=2024-05-06&sortBy=publishedAt&apiKey=7c07f0c86d484b30a5af1289c531cff1',
      );

      if (response.statusCode! > 300) {
        return null;
      } else {
        GetNewsModel responseModel = GetNewsModel.fromJson(response.data);

        print(responseModel.status);
        return responseModel;
      }
    } catch (e) {
      print(e);
    }
  }
}
