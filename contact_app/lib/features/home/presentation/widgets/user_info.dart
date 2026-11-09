import 'package:contact_app/features/home/data/models/user_model.dart';
import 'package:contact_app/utils/app_assets.dart';
import 'package:contact_app/utils/app_colors.dart';
import 'package:contact_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.width, required this.height, required this._userModel});

  final double width;
  final double height;
  final UserModel _userModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2,
      children: [
        Row(
          crossAxisAlignment: .center,
          spacing: 3,
          children: [
            Image.asset(Assets.assetsImagesHomeExclude, height: 20, width: 20),
            Text(
              _userModel.userEmail,
              style: AppStyles.semiBold16.copyWith(
                fontSize: 10,
                color: AppColors.darkBlue,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: .center,
          spacing: 3,
          children: [
            Image.asset(
              Assets.assetsImagesHomePhoneCall,
              height: 20,
              width: 20,
            ),
            Text(
              _userModel.userPhone,
              style: AppStyles.semiBold16.copyWith(
                fontSize: 10,
                color: AppColors.darkBlue,
              ),
            ),
          ],
        ),
        Gap(7),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.red),
            fixedSize: WidgetStatePropertyAll(Size(width, height * 0.02)),
            shape: WidgetStatePropertyAll(
              ContinuousRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(32),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: .center,
            spacing: 4,
            children: [
              SvgPicture.asset(
                Assets.assetsImagesHomeBin,
                height: 17,
                width: 17,
              ),
              Text(
                'Delete',
                style: AppStyles.light16.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
