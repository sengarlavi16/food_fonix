import 'package:flutter/material.dart';
import 'package:food_fonix/core/app_colors.dart';
import 'package:food_fonix/core/app_images.dart';
import 'package:food_fonix/core/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class ArrivalsListView extends StatelessWidget {
  const ArrivalsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 40,
          child: Container(
            height: 180,
            width: 160,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  AppStrings.pistachio,
                  style: GoogleFonts.itim(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  AppStrings.chocolateStrawberry,
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: ClipOval(
            child: Image.asset(
              AppImages.imgIcecream,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
