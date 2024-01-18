import 'package:bloc/bloc.dart';

class YoutubeApiDataState {
  List youtubeApiData;
  bool isLoaded;

  YoutubeApiDataState({this.youtubeApiData = const [], this.isLoaded = false});
}

class YoutubeApiDataCubit extends Cubit<YoutubeApiDataState> {
  YoutubeApiDataCubit() : super(YoutubeApiDataState());

  void newData(List newData) {
    List newYoutubeApiData = List.from(state.youtubeApiData);
    newYoutubeApiData = newData;
    emit(YoutubeApiDataState(youtubeApiData: newYoutubeApiData));
  }

  void checkIfLoaded(bool check) {
    bool newCheck = state.isLoaded;
    newCheck = check;
    emit(YoutubeApiDataState(isLoaded: newCheck));
  }
}
