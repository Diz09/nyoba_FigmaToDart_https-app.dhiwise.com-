import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController confirmPasswordFieldController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 64.v),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 39.v),
                          Text(
                            "Create your account",
                            style: CustomTextStyles.bodyMediumDeeporangeA100,
                          ),
                          SizedBox(height: 27.v),
                          _buildEmailField(context),
                          SizedBox(height: 30.v),
                          _buildPasswordField(context),
                          SizedBox(height: 30.v),
                          _buildConfirmPasswordField(context),
                          SizedBox(height: 54.v),
                          _buildSignUpButton(context),
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
                                    style:
                                        CustomTextStyles.labelLargeBlack900_1,
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
                          SizedBox(height: 36.v),
                          _buildStackOrSignUpWith(context),
                          SizedBox(height: 32.v),
                          _buildSignUpWithGoogleButton(context),
                          SizedBox(height: 10.v),
                          _buildSignUpWithFacebookButton(context)
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage1147x150,
                    height: 147.v,
                    width: 150.h,
                    radius: BorderRadius.circular(
                      73.h,
                    ),
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 113.v),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 42.h,
        right: 41.h,
      ),
      child: CustomTextFormField(
        controller: emailFieldController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 42.h,
        right: 41.h,
      ),
      child: CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 42.h,
        right: 41.h,
      ),
      child: CustomTextFormField(
        controller: confirmPasswordFieldController,
        hintText: "Confirm Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      width: 251.h,
      text: "Sign up",
      onPressed: () {
        onTapSignUpButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildStackOrSignUpWith(BuildContext context) {
    return SizedBox(
      height: 17.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Or sign up with",
              style: CustomTextStyles.bodySmall11,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgStroke,
            height: 1.v,
            width: 428.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 7.v),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 291.h,
      text: "Sign up with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 22.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogleglogo11,
          height: 30.v,
          width: 31.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpWithFacebookButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 291.h,
      text: "Sign up with Facebook",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 22.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 30.v,
          width: 31.h,
        ),
      ),
    );
  }

  /// Navigates to the signInOneScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInOneScreen);
  }

  /// Navigates to the signInOneScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInOneScreen);
  }
}
