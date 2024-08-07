import 'dart:async';

import 'package:flutter/cupertino.dart';

void main() {
  StreamSubscription<MainUiEvent>? subscription;

  final ViewModel viewModel = ViewModel();

  // initState
  subscription = viewModel.eventStream.listen((event) {
    switch (event) {

      case ShowErrorMessage():
        print(event.data);
      case ShowSuccessMessage():
        // context.push
        print(event.message);
    }
  });

  // dispose
  subscription?.cancel();
}

class ViewModel {
  final _eventController = StreamController<MainUiEvent>();

  Stream<MainUiEvent> get eventStream => _eventController.stream;

  void fetchData() async {
    // 잘 되면
    // _state = state.copyWith(...);

    // 에러 or 1회성 이벤트
    _eventController.add(const MainUiEvent.showErrorMessage('에러입니다'));


    // 또 다른 1회성 이벤트
    _eventController.add(const MainUiEvent.showSuccessMessage('성공입니다'));
  }
}

sealed class MainUiEvent {
  const factory MainUiEvent.showErrorMessage(String message) = ShowErrorMessage;

  const factory MainUiEvent.showSuccessMessage(String message) = ShowSuccessMessage;
}

class ShowErrorMessage implements MainUiEvent {
  final String data;

  const ShowErrorMessage(this.data);
}

class ShowSuccessMessage implements MainUiEvent {
  final String message;

  const ShowSuccessMessage(this.message);
}