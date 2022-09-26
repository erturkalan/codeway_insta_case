import 'package:bloc/bloc.dart';
import 'package:codeway_insta_case/models/user_model.dart';
import 'package:codeway_insta_case/story_flow_state.dart';

class StoryFlowCubit extends Cubit<StoryFlowState> {
  final List<User> users;

  StoryFlowCubit({
    required this.users,
  }) : super(const ShowLoading());

  void initialize() async {
    // api request
    await Future.delayed(const Duration(seconds: 3));
    emit(ShowView(users: users));
  }

  /// called by story screen to show story of next user
  void onStoryPagePressedNext(User user) {
    // find the user n parameter inside the list
    // get the next user to him
    final userIndex = users.indexWhere((element) => element.id == user.id);

    if (userIndex == users.length - 1) {
      onStoryPageQuit(user);
    } else {
      final nextUser = users[userIndex + 1];
      emit(OnNext(user: nextUser));
    }
    _updateView(user);
  }

  /// called by story screen to show story of previous user
  void onStoryPagePressedPrevious(User user) {
    final userIndex = users.indexWhere((element) => element.id == user.id);

    if (userIndex == 0) {
      onStoryPageQuit(user);
    } else {
      final nextUser = users[userIndex - 1];
      emit(OnPrevious(user: nextUser));
    }
    _updateView(user);
  }

  /// quit
  void onStoryPageQuit(User user) {
    _updateView(user);
    emit(const OnQuit());
  }

  /// updates home page view
  void _updateView(User user) {
    final userIndex = users.indexWhere((element) => element.id == user.id);
    final changedList = List<User>.from(users);
    changedList[userIndex] = user;
    users.clear();
    users.addAll(changedList);

    emit(ShowView(users: changedList));
  }
}
