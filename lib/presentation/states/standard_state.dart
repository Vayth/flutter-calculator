import 'package:freezed_annotation/freezed_annotation.dart';

part 'standard_state.freezed.dart';

@freezed
abstract class StandardState with _$StandardState {
  const factory StandardState(String value) = Data;
  const factory StandardState.loading() = Loading;
  const factory StandardState.error([String? message]) = ErrorDetails;
}
