import 'package:flutter/material.dart';
import 'package:food_fonix/core/app_colors.dart';
import 'package:food_fonix/core/app_images.dart';
import 'package:food_fonix/core/app_strings.dart';
import 'package:food_fonix/core/custom_text_field.dart';
import 'package:food_fonix/core/global_widgets/app_toast.dart';
import 'package:food_fonix/features/landing/presentation/screens/landing.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBgColor,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                AppImages.upperBgImg,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned.fill(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Image.asset(AppImages.sideLowerBg, height: 250),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.welcome,
                          style: GoogleFonts.itim(
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 44,
                          ),
                        ),
                        Text(
                          AppStrings.loginAsGuest,
                          style: GoogleFonts.itim(
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 40),
                        CustomTextField(
                          keyboardType: TextInputType.name,
                          hintText: AppStrings.userName,
                          icon: Icons.person,
                        ),
                        CustomTextField(
                          keyboardType: TextInputType.phone,
                          hintText: AppStrings.phoneNumber,
                          icon: Icons.phone,
                        ),
                        CustomTextField(
                          keyboardType: TextInputType.text,
                          hintText: AppStrings.password,
                          icon: Icons.lock,
                          obscureText: true,
                        ),
                        const SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            if (userName.text.isEmpty) {
                              appToast("Please Enter Username", context);
                            } else if (phoneNumber.text.isEmpty) {
                              appToast(
                                "Please Enter valid Phone Number",
                                context,
                              );
                            } else if (password.text.isEmpty) {
                              appToast("Please Enter Your Password", context);
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LandingPage(),
                                ),
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: AppColors.appColor,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.appColor,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: const SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  AppStrings.loginNow,
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
