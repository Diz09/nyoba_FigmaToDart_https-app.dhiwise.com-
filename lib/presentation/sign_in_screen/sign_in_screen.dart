import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.orange100,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let’s get started!",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 47.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage1,
                height: 295.v,
                width: 300.h,
                radius: BorderRadius.circular(
                  147.h,
                ),
              ),
              SizedBox(height: 73.v),
              CustomElevatedButton(
                width: 251.h,
                text: "Sign up",
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: theme.textTheme.titleLarge!,
                onPressed: () {
                  onTapSignup(context);
                },
              ),
              SizedBox(height: 23.v),
              GestureDetector(
                onTap: () {
                  onTapTxtAlreadyhavean(context);
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account?",
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "Sign in",
                        style: CustomTextStyles.labelLargeGray70001_1.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the signInOneScreen when the action is triggered.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInOneScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
