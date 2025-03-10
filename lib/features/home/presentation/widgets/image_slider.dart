import 'package:flutter/material.dart';
import 'package:food_fonix/core/app_images.dart';
import 'package:food_fonix/features/home/presentation/widgets/indicator_dots.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 350,
              height: 160,
              decoration: BoxDecoration(
                color: Color(0xFFF97D9C),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              top: 0,
              bottom: -25,
              left: -30,
              child: Image.asset(
                AppImages.imgFoodPlate,
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 120,
              top: 30,
              bottom: 0,
              child: SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Assorted Scooped Ice Cream",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Combo of 6 Different Scoops",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              right: -25,
              child: Image.asset(
                AppImages.imgBerries,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IndicatorDot(isActive: true),
            IndicatorDot(isActive: false),
            IndicatorDot(isActive: false),
          ],
        ),
      ],
    );
  }
}
