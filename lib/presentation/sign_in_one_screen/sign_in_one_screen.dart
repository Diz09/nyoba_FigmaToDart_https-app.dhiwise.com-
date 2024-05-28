// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignInOneScreen extends StatelessWidget {
  SignInOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.orange100,
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
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 38.v),
                          Text(
                            "Sign to your account",
                            style: CustomTextStyles.bodyMediumPrimary,
                          ),
                          SizedBox(height: 28.v),
                          _buildEmailField(context),
                          SizedBox(height: 30.v),
                          _buildPasswordField(context),
                          SizedBox(height: 10.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotpassword(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 41.h),
                                child: Text(
                                  "Forgot Password?",
                                  style: CustomTextStyles.labelMediumGray70001.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.v),
                          _buildSignInButton(context),
                          SizedBox(height: 23.v),
                          GestureDetector(
                            onTap: () {
                              onTapTxtDontthaveanaccount(context);
                            },
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Dont’t have an account?",
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: "Sign up",
                                    style: CustomTextStyles.labelLargeGray70001_1.copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 32.v),
                          _buildSignInWithStack(context),
                          SizedBox(height: 32.v),
                          _buildSignInWithGoogleButton(context),
                          SizedBox(height: 10.v),
                          _buildSignInWithFacebookButton(context)
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 83.h,
                        top: 90.v,
                        right: 83.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Welcome Back",
                            style: theme.textTheme.displaySmall,
                          ),
                          SizedBox(height: 37.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage1147x150,
                            height: 147.v,
                            width: 150.h,
                            radius: BorderRadius.circular(
                              73.h,
                            ),
                          )
                        ],
                      ),
                    ),
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
        hintStyle: CustomTextStyles.bodyMediumBluegray400,
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
        hintStyle: CustomTextStyles.bodyMediumBluegray400,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
      height: 52.v,
      width: 251.h,
      text: "Sign in",
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.titleLarge!,
      onPressed: () {
        onTapSignInButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildSignInWithStack(BuildContext context) {
    return SizedBox(
      height: 17.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Or sign in with",
              style: CustomTextStyles.bodySmallOnPrimaryContainer,
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
  Widget _buildSignInWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 291.h,
      text: "Sign in with Google",
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
  Widget _buildSignInWithFacebookButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 291.h,
      text: "Sign in with Facebook",
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

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

/// Navigates to the homeContainerScreen when the action is triggered.
  onTapSignInButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.containerScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDontthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
