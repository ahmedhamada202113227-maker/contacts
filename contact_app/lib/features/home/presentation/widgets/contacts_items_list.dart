import 'package:contact_app/features/home/data/models/user_model.dart';
import 'package:contact_app/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'one_contact_card_item.dart';

class ContactsItemsList extends StatelessWidget {
  ContactsItemsList({super.key});

  final List<UserModel> _list = [
    UserModel(
      userName: 'El-balf',
      userEmail: 'elbalf.route@gmail.com',
      userPhone: '+201666666666',
      userImg: Assets.assetsImagesProfileProfile1,
    ),
    UserModel(
      userName: 'Goat',
      userEmail: 'leomessi.route@gmail.com',
      userPhone: '+200000000000',
      userImg: Assets.assetsImagesProfileProfile2,
    ),
    UserModel(
      userName: 'User',
      userEmail: 'user.route@gmail.com',
      userPhone: '+200000000000',
      userImg: Assets.assetsImagesProfileProfile3,
    ),
    UserModel(
      userName: 'Leo Messi',
      userEmail: 'leomessi.route@gmail.com',
      userPhone: '+201666666666',
      userImg: Assets.assetsImagesProfileProfile4,
    ),
    UserModel(
      userName: 'Goat',
      userEmail: 'leomessi.route@gmail.com',
      userPhone: '+200000000000',
      userImg: Assets.assetsImagesProfileProfile2,
    ),
    UserModel(
      userName: 'El-balf',
      userEmail: 'elbalf.route@gmail.com',
      userPhone: '+201666666666',
      userImg: Assets.assetsImagesProfileProfile1,
    ),
    UserModel(
      userName: 'Leo Messi',
      userEmail: 'leomessi.route@gmail.com',
      userPhone: '+201666666666',
      userImg: Assets.assetsImagesProfileProfile4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Align(
            alignment: .centerLeft,
            child: Image.asset(
              Assets.assetsImagesHomeRouteMark,
              height: 140,
              width: 140,
            ),
          ),
        ),
        SliverAnimatedGrid(
          initialItemCount: _list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.62,
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index, animation) {
            return OneContactCardItem(
              height: height,
              width: width,
              userModel: _list[index],
            );
          },
        ),
        SliverToBoxAdapter(child: Gap(100)),
      ],
    );
  }
}
