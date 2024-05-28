import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_circleimage.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChatAdminScreen extends StatelessWidget {
  ChatAdminScreen({Key? key})
      : super( key: key );

  TextEditingController actiononeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray20001,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 115.v,
                width: double.maxFinite,
              ),
              Spacer()
            ],
          ),
        ),
        bottomNavigationBar: _buildRowActionOne(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 115.v,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 58.v,
          bottom: 34.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(
          left: 25.h,
          top: 45.v,
          bottom: 20.v,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder25,
                  ),
                  child: AppbarCircleimage(
                    imagePath: ImageConstant.imgImage150x50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 1.v,
                    bottom: 9.v,
                  ),
                  child: Column(
                    children: [
                      AppbarTitle(
                        text: "ViosCake",
                      ),
                      AppbarSubtitleOne(
                        text: "Online",
                        margin: EdgeInsets.only(right: 38.h),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildRowActionOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30.h,
        top: 25.v,
        bottom: 17.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: CustomTextFormField(
                controller: actiononeController,
                hintText: "Write Message...",
                hintStyle: CustomTextStyles.bodyMediumBluegray40015,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 9.v,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: CustomIconButton(
              height: 41.adaptSize,
              width: 41.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgSendChat,
              ),
            ),
          )
        ],
      ),
    );
  }
}