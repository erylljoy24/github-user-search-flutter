import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_user_github/core/http_service.dart';
import 'package:search_user_github/search_repo/data/model/git_state.dart';

class GitUserNotifier extends StateNotifier<GitState> {
  GitUserNotifier() : super(GitState());
  static final httpService = HttpService();

  Future<void> fetchRepo(String name) async {
    final response = await httpService.getRequest(name);
    state = state.copyWith(isListLoading: true);
    if(response != null) {
      final List list = response['items'];
      List<User> user = list.map((e) => User.fromJson(e)).toList();
      state = state.copyWith(users: user, isListLoading: false);
    }
  }

  Future<void> fetchUserDetail(String name) async {
    final response = await httpService.getUserRequest(name);
    state = state.copyWith(isDetailLoading: true);
    if(response != null) {
      GitUserDetail userDetail = GitUserDetail.fromJson(response);
      state = state.copyWith(gitUserDetail: userDetail, isDetailLoading: false);
    }
  }
}

final gitUserProvider = StateNotifierProvider<GitUserNotifier, GitState>(
        (ref) => GitUserNotifier());