import 'package:codeway_insta_case/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_flow_state.freezed.dart';

/// generate source: 'flutter pub run build_runner build --delete-conflicting-outputs'
///
@freezed
class StoryFlowState with _$StoryFlowState {
  /// build & render states
  const factory StoryFlowState.showLoading() = ShowLoading;
  const factory StoryFlowState.showView({
    @Default(<User>[]) final List<User> users,
  }) = ShowView;

  /// notification states
  const factory StoryFlowState.onPressedNext({User? previousUser, User? currentUser}) = OnNext;
  const factory StoryFlowState.onPressedPrevious({User? previousUser, User? currentUser}) = OnPrevious;
  const factory StoryFlowState.onQuit() = OnQuit;
}
