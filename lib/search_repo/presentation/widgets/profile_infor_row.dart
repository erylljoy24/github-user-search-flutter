import 'package:flutter/material.dart';
import 'package:search_user_github/search_repo/data/model/git_state.dart';

class ProfileInfoRow extends StatefulWidget {

  const ProfileInfoRow({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileInfoRow> createState() => _ProfileInfoRowState();
}

class _ProfileInfoRowState extends State<ProfileInfoRow> {

  late GitUserDetail userDetail;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      constraints: const BoxConstraints(maxWidth: 400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${userDetail.repos!}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                "Public Repos",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
          const VerticalDivider(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${userDetail.followers!}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                "Followers",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ]
      ),
    );
  }
}