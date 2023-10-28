import 'package:bloc/bloc.dart';

class SelectedScreenState {
  List<String> selectedScreen;

  SelectedScreenState({this.selectedScreen = const ['basic', 'none']});
}

class SelectedScreenCubit extends Cubit<SelectedScreenState> {
  SelectedScreenCubit() : super(SelectedScreenState());

  void selectFirst(String selectFirstScreen) {
    List<String> newSelectedScreen = List.from(state.selectedScreen);
    newSelectedScreen[0] = selectFirstScreen;
    emit(SelectedScreenState(selectedScreen: newSelectedScreen));
  }

  void selectSecond(String selectSecondScreen) {
    List<String> newSelectedScreen = List.from(state.selectedScreen);
    newSelectedScreen[1] = selectSecondScreen;
    emit(SelectedScreenState(selectedScreen: newSelectedScreen));
  }

  void selectAll(List<String> selectedScreen) {
    List<String> newSelectedScreen = List.from(state.selectedScreen);
    newSelectedScreen = selectedScreen;
    emit(SelectedScreenState(selectedScreen: newSelectedScreen));
  }
}
