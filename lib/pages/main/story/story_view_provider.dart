import 'package:flutter/cupertino.dart';
import 'package:instagram/models/story_model.dart';
import 'package:instagram/utils/app_routes.dart';

class StoryViewProvider with ChangeNotifier {
  final List<StoryModel> _storyList = [];
  void navigateToStory(BuildContext context) {
    Navigator.of(context).pushNamed(AppRoutes.createStory);
  }
}
