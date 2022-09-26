import 'package:codeway_insta_case/data.dart';
import 'package:codeway_insta_case/story_flow_cubit.dart';
import 'package:codeway_insta_case/story_flow_state.dart';
import 'package:codeway_insta_case/story_screen.dart';
import 'package:codeway_insta_case/utils/cubic_transition.dart';
import 'package:codeway_insta_case/utils/user_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'models/user_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User> dummyUsers = <User>[];
  late StoryFlowCubit cubit;

  @override
  void initState() {
    dummyUsers = users;
    for (var element in dummyUsers) {
      element.storyGroup.clear();
    }
    for (int i = 0; i < dummyUsers.length; i++) {
      final userId = dummyUsers[i].id;
      final storiesWithId =
          stories.where((story) => story.userId == userId).toList();
      dummyUsers[i].addStoryGroup(storiesWithId);
    }

    cubit = StoryFlowCubit(users: dummyUsers);
    cubit.initialize();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: const Center(
          child: Text(
            'Insta Stories',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildBody(context),
          const Expanded(
            child: Center(
              child: Text('Welcome To Insta Story Case'),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocConsumer<StoryFlowCubit, StoryFlowState>(
      builder: _builder,
      listener: _listener,
      buildWhen: _buildWhen,
      bloc: cubit,
    );
  }

  bool _buildWhen(StoryFlowState previous, StoryFlowState current) =>
      current is ShowView;

  void _listener(BuildContext context, StoryFlowState state) {
    state.maybeMap(
      onPressedNext: (state) {
        Navigator.pushReplacement(
          context,
          CubicTransitionBuilder(
              enterPage: StoryScreen(
                user: state.user!,
                flowCubit: cubit,
              ),
              exitPage: context.widget),
        );
      },
      onPressedPrevious: (state) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return StoryScreen(
                user: state.user!,
                flowCubit: cubit,
              );
            },
          ),
        );
      },
      onQuit: (state) {
        Navigator.pop(context);
      },
      orElse: () {},
    );
  }

  Widget _builder(BuildContext context, StoryFlowState state) {
    return state.maybeMap(
      showLoading: _buildLoadingWidget,
      showView: _buildMainWidget,
      orElse: () => const SizedBox(),
    );
  }

  Widget _buildLoadingWidget(ShowLoading loadingState) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget _buildMainWidget(ShowView viewState) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: viewState.users.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return UserBox(
            onTap: () {
              _openStoriesOfUser(viewState.users[index]);
            },
            user: viewState.users[index],
          );
        },
      ),
    );
  }

  void _openStoriesOfUser(User user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryScreen(
          user: user,
          flowCubit: cubit,
        ),
      ),
    );
  }
}
