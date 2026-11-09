import 'package:contact_app/features/home/data/models/user_model.dart';
import 'package:contact_app/utils/app_colors.dart';
import 'package:contact_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'user_info.dart';

class OneContactCardItem extends StatelessWidget {
  const OneContactCardItem({
    super.key,
    required this.height,
    required this.width,
    required this._userModel,
  });

  final double height;
  final double width;
  final UserModel _userModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightBej,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset(_userModel.userImg),
          ),
          Positioned(
            bottom: height * 0.01,
            left: 5,
            right: 5,
            child: UserInfo(
              width: width,
              height: height,
              userModel: _userModel,
            ),
          ),
          Positioned(
            top: height * 0.15,
            left: width * 0.02,
            child: Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                color: AppColors.lightBej,
                borderRadius: BorderRadius.circular(8),
              ),
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    _userModel.userName,
                    style: AppStyles.medium16.copyWith(
                      color: AppColors.darkBlue,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
