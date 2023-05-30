import 'package:flutter/material.dart';
import 'package:search_user_github/core/app_router.dart';

import '../../data/model/git_state.dart';

class ListCard extends StatelessWidget{
  final User user;
  final int index;
  const ListCard({
    super.key,
    required this.user,
    required this.index
  });

  // _navigationService.navigateTo(Router.eventListingScreenRoute, arguments: {
  // 'iosa': 'DSP - Flight Dispatch',
  // });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRouter.detailPage, arguments: {
          'user': user,
          'index': index
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black38,
            )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: index,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
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
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${user.name!}',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black45
                      ),
                    ),
                    Text(
                      'Type: ${user.type!}',
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black45
                      ),
                    ),
                    Text(
                      'Score: ${user.score!}',
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black45
                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

}