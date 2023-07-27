import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../Models/all_news/all_news_model.dart';
import '../../Repos/all_news_repo.dart';
part 'all_news_state.dart';

class AllNewsCubit extends Cubit<AllNewsState> {
  AllNewsCubit() : super(AllNewsInitial());

  getAllNews() {
    emit(AllNewsLoading());

    AllNewsRepo().getAllNews().then((value) => {
          if (value != null)
            {emit(AllNewsSuccess(myResponse: value))}
          else
            {emit(AllNewsFailure())}
        });
  }
}
