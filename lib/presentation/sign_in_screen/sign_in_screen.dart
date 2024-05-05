import 'package:flutter/material.dart';
import '../../core/app_export.dart';
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
                        style: CustomTextStyles.labelLargeBlack900_1,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "Sign in",
                        style: theme.textTheme.labelLarge!.copyWith(
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
