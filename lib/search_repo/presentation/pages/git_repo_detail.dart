import 'package:flutter/material.dart';
import 'package:search_user_github/search_repo/data/model/git_state.dart';
import 'package:search_user_github/search_repo/presentation/widgets/profile_infor_row.dart';

import '../widgets/profile_top_portion.dart';

class GitRepoDetail  extends StatefulWidget {
  final User user;
  final int index;
  const GitRepoDetail({
    Key? key,
    required this.user,
    required this.index
  }) : super(key: key);

  @override
  State<GitRepoDetail> createState() => _GitRepoDetailState();
}

class _GitRepoDetailState extends State<GitRepoDetail> {
  @override
  Widget build(BuildContext context) {
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
                  const SizedBox(height: 16),
                  const ProfileInfoRow()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}