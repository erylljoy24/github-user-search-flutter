import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_user_github/core/http_service.dart';
import 'package:search_user_github/search_repo/data/model/git_state.dart';

class GitUserNotifier extends StateNotifier<GitState> {
  GitUserNotifier() : super(GitState());
  static final httpService = HttpService();

  Future<void> fetchRepo(String name) async {
    final response = await httpService.getRequest(name);
    if(response != null) {
      final List list = response;
      List<User> user = list.map((e) => User.fromJson(e)).toList();
      state = state.copyWith(users: user);
    }
  }
}

final gitUserProvider = StateNotifierProvider<GitUserNotifier, GitState>(
        (ref) => GitUserNotifier());