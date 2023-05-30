import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_user_github/search_repo/presentation/riverpod/git_user_notifier.dart';

import '../../data/model/git_state.dart';
import '../widgets/list_card.dart';
class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen>{

  late List<User> users = [];
  TextEditingController searchController = TextEditingController();
  bool isLoading = true;
  bool isClicked = false;
  FocusNode myFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final gitUserHandler = ref.read(gitUserProvider.notifier);
    users = ref.watch(gitUserProvider).users;
    isLoading = ref.watch(gitUserProvider).isListLoading;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                controller: searchController,
                focusNode: myFocus,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                          isLoading = true;
                          isClicked = true;
                        });
                        gitUserHandler.fetchRepo(searchController.text);
                        myFocus.unfocus();
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          ),
        )
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return (users.isNotEmpty) ? ListView.builder(
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                User user = users[index];
                return ListCard(user: user, index: index);
              },
            ) : (isLoading && isClicked) ? const Center(child: CircularProgressIndicator()) :
            Center(child: Text("Search a repo...",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ));
          }
        ),
      ),
    );
  }
}