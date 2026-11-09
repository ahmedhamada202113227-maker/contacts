import 'package:contact_app/features/home/presentation/widgets/FloatingButtons/bottom_sheet_body.dart';
import 'package:contact_app/utils/app_assets.dart';
import 'package:contact_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({super.key});

  void _modalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Expanded(
          child: Container(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.darkBlue,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(25.0),
                  topRight: const Radius.circular(25.0),
                ),
              ),
              child: BottomSheetBody(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 15,
          child: Column(
            spacing: 10,
            children: [
              FloatingActionButton(
                onPressed: () {
                  _modalBottomSheetMenu(context);
                },
                backgroundColor: AppColors.red,

                child: SvgPicture.asset(Assets.assetsImagesHomeBin),
              ),
              FloatingActionButton(
                onPressed: () {
                  _modalBottomSheetMenu(context);
                },
                backgroundColor: AppColors.lightBej,

                child: SvgPicture.asset(Assets.assetsImagesHomeAdd),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
