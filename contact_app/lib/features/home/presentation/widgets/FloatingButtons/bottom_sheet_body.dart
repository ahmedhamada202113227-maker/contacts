import 'package:contact_app/shared/custom_text_from_field.dart';
import 'package:contact_app/utils/app_assets.dart';
import 'package:contact_app/utils/app_colors.dart';
import 'package:contact_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomSheetBody extends StatefulWidget {
  const BottomSheetBody({super.key});

  @override
  State<BottomSheetBody> createState() => _BottomSheetBodyState();
}

class _BottomSheetBodyState extends State<BottomSheetBody> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _userEmail = TextEditingController();
  final TextEditingController _userPhone = TextEditingController();

  String? userName;
  String? userEmail;
  String? userNumber;

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          spacing: 10,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightBej, width: 1.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(Assets.assetsImagesHomeImageNotPreview),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                spacing: 10,
                children: [
                  Text(userName ?? 'User Name', style: AppStyles.medium16),
                  Divider(
                    color: AppColors.lightBej,
                    height: 10,
                    endIndent: 20,
                    thickness: 2,
                  ),
                  Text(
                    userEmail ?? 'example@email.com',
                    style: AppStyles.medium16,
                  ),
                  Divider(
                    color: AppColors.lightBej,
                    height: 10,
                    endIndent: 20,
                    thickness: 2,
                  ),
                  Text(
                    userNumber ?? '+200000000000',
                    style: AppStyles.medium16,
                  ),
                ],
              ),
            ),
          ],
        ),

        Expanded(
          child: Form(
            key: _globalKey,
            child: Column(
              children: [
                CustomTextFromField(
                  hintTxt: 'Enter User Name',
                  keyboardType: .text,
                  controller: _userName,
                  onChanged: (val) {
                    userName = val;
                    setState(() {});
                  },
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'User Name Is Empty, Please Enter User Name';
                    }
                    return null;
                  },
                ),
                CustomTextFromField(
                  hintTxt: 'Enter User Email',
                  keyboardType: .text,
                  controller: _userEmail,
                  onChanged: (val) {
                    userEmail = val;
                    setState(() {});
                  },
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'User Email Is Empty, Please Enter User Email';
                    }
                    return null;
                  },
                ),
                CustomTextFromField(
                  hintTxt: 'Enter User Phone',
                  keyboardType: .number,
                  controller: _userPhone,
                  onChanged: (val) {
                    userNumber = val;
                    setState(() {});
                  },
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'User Phone Is Empty, Please Enter User Phone';
                    }
                    return null;
                  },
                ),
                Gap(8),
                TextButton(
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      _globalKey.currentState!.save();
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(AppColors.lightBej),
                    fixedSize: WidgetStatePropertyAll(Size(370, 60)),
                    shape: WidgetStatePropertyAll(
                      ContinuousRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(32),
                      ),
                    ),
                  ),
                  child: Text(
                    'Enter user',
                    style: AppStyles.light20.copyWith(
                      color: AppColors.darkBlue,
                    ),
                  ),
                ),
                Gap(10),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
