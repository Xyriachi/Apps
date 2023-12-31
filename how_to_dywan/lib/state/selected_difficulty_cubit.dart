import 'package:bloc/bloc.dart';

class SelectedDifficultyState {
  List<String> selectedDifficulty;

  SelectedDifficultyState({this.selectedDifficulty = const ['10', 'nm']});
}

class SelectedDifficultyCubit extends Cubit<SelectedDifficultyState> {
  SelectedDifficultyCubit() : super(SelectedDifficultyState());

  void selectFirst(String selectFirstDifficulty) {
    List<String> newSelectedDifficulty = List.from(state.selectedDifficulty);
    newSelectedDifficulty[0] = selectFirstDifficulty;
    emit(SelectedDifficultyState(selectedDifficulty: newSelectedDifficulty));
  }

  void selectSecond(String selectSecondDifficulty) {
    List<String> newSelectedDifficulty = List.from(state.selectedDifficulty);
    newSelectedDifficulty[1] = selectSecondDifficulty;
    emit(SelectedDifficultyState(selectedDifficulty: newSelectedDifficulty));
  }

  void selectAll(List<String> selectedDifficulty) {
    List<String> newSelectedDifficulty = List.from(state.selectedDifficulty);
    newSelectedDifficulty = selectedDifficulty;
    emit(SelectedDifficultyState(selectedDifficulty: newSelectedDifficulty));
  }
}
