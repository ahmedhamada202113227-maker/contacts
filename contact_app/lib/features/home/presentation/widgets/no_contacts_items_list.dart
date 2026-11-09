import 'package:contact_app/utils/app_assets.dart';
import 'package:contact_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NoContactsItemsList extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: .centerLeft,
          child: Image.asset(
            Assets.assetsImagesHomeRouteMark,
            height: 140,
            width: 140,
          ),
        ),
        Spacer(),
        Image.asset(
          Assets.assetsImagesHomeListEmpty,
          // height: 140,
          // width: 140,
        ),
        Spacer(),
        Text('There is No Contacts Added Here', style: AppStyles.medium20),
        Gap(120),
        Spacer(),
      ],
    );
  }
}
