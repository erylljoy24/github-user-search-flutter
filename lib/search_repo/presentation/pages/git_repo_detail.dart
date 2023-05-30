import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_user_github/search_repo/data/model/git_state.dart';
import 'package:search_user_github/search_repo/presentation/riverpod/git_user_notifier.dart';
import 'package:search_user_github/search_repo/presentation/widgets/profile_infor_row.dart';

import '../widgets/profile_top_portion.dart';

class GitRepoDetail  extends ConsumerStatefulWidget {
  final User user;
  final int index;
  const GitRepoDetail({
    Key? key,
    required this.user,
    required this.index
  }) : super(key: key);

  @override
  ConsumerState<GitRepoDetail> createState() => _GitRepoDetailState();
}

class _GitRepoDetailState extends ConsumerState<GitRepoDetail> {

  GitUserDetail? userDetail;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final gitUserHandler = ref.read(gitUserProvider.notifier);
    gitUserHandler.fetchUserDetail(widget.user.name!);
  }

  @override
  Widget build(BuildContext context) {
    userDetail = ref.watch(gitUserProvider).gitUserDetail;
    isLoading = ref.watch(gitUserProvider).isDetailLoading;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Hero(
              tag: widget.index,
              child: ProfileTopPortion(user: widget.user),
            )
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    widget.user.name!,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Full Name: ${userDetail?.realName ?? 'N/A'}',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Type: ${widget.user.type}',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Score: ${widget.user.score}',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  isLoading ? const CircularProgressIndicator() : ProfileInfoRow(userDetail: userDetail!)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}