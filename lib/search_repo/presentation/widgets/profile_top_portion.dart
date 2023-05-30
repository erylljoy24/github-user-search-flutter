import 'package:flutter/material.dart';
import 'package:search_user_github/search_repo/data/model/git_state.dart';

class ProfileTopPortion extends StatelessWidget {
  final User user;
  const ProfileTopPortion({
    Key? key,
    required this.user,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xff0043ba), Color(0xff006df1)]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  user.avatar ?? '',
                  height: 70,
                  width: 70,
                  errorBuilder: ((context, exception, stackTrace) {
                    return Image.network(
                        'https://png.pngtree.com/element_our/20190528/ourmid/pngtree-error-icon-image_1127796.jpg',
                        height: 70,
                        width: 70);
                  }),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}