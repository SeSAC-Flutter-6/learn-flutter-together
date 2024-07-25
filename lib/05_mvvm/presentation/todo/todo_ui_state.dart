import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_ui_state.freezed.dart';

@freezed
class TodoUiState with _$TodoUiState {
  const factory TodoUiState({
    @Default([]) List<String> todos,
    @Default(false) bool isLoading,
    @Default(false) bool fetchLoading,
  }) = _TodoUiState;
}