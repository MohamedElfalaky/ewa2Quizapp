import 'package:bloc/bloc.dart';
import 'package:ewa_camp2_quizz_app/data/models/get_news_model.dart';
import 'package:ewa_camp2_quizz_app/data/repositories/get_news_repo.dart';
import 'package:meta/meta.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());

  Future getNewsInUI() async {
    try {
      emit(GetNewsLoading());
      GetNewsModel? response = await GetNewsRepo().getNews();
      emit(GetNewsSuccess(response));
    } catch (e) {
      emit(GetNewsError());
    }
  }
}
