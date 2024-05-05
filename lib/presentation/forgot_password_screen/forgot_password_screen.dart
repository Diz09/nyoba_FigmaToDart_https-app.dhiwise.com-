import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(25.h),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                height: 38.v,
                width: 21.h,
                alignment: Alignment.centerLeft,
                onTap: () {
                  onTapImgArrowleftone(context);
                },
              ),
              SizedBox(height: 26.v),
              Text(
                "Verification Code",
                style: CustomTextStyles.displaySmallBlack900,
              ),
              SizedBox(height: 15.v),
              Text(
                "Please enter the code we just send to email",
                style: CustomTextStyles.bodySmallBluegray400,
              ),
              SizedBox(height: 13.v),
              Text(
                "xxxxx@gmail.com",
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 49.h,
                  right: 51.h,
                ),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 40.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "If you didn’t receive the code? ",
                      style: theme.textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "Resend",
                      style: CustomTextStyles.labelLarge12.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 48.v),
              CustomElevatedButton(
                text: "Continue",
                margin: EdgeInsets.only(
                  left: 42.h,
                  right: 41.h,
                ),
                onPressed: () {
                  onTapContinue(context);
                },
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the changePasswordScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changePasswordScreen);
  }
}
