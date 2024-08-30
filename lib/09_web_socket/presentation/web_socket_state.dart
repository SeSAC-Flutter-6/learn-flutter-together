import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_socket_state.freezed.dart';

part 'web_socket_state.g.dart';

@freezed
class WebSocketState with _$WebSocketState {
  const factory WebSocketState({
    @Default([]) List<Map<String, dynamic>> items
  }) = _WebSocketState;

  factory WebSocketState.fromJson(Map<String, Object?> json) => _$WebSocketStateFromJson(json);
}