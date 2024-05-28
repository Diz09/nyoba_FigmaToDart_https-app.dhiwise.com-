import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'widgets/list_item_widget.dart';
import 'widgets/listrectangle_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      :super(key: key);

  TextEditingController pengumumanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 6.v),
              _buildRowHalo(context),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "User Account",
                    style: CustomTextStyles.headlineLargeRegular,
                  ),
                ),
              ),
              SizedBox(height: 61.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: CustomTextFormField(
                  controller: pengumumanController,
                  hintText: "Pengumuman",
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.centerLeft,
                  maxLines: 6,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 17.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                  filled: true,
                  fillColor: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 45.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Best Seller",
                    style: CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              _buildListRectangle(context),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Gallery",
                    style: CustomTextStyles.titleSmallOnPrimaryContainerSemiBold,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              _buildList(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowHalo(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 44.v),
              child: Text(
                "Halo, ",
                style: theme.textTheme.headlineLarge,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 38.v),
              child: CustomIconButton(
                height: 50.adaptSize,
                width: 50.adaptSize,
                padding: EdgeInsets.all(7.h),
                onTap: () {
                  onTapBtnNotification(context);
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgChatNotification,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListRectangle(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 129.v,
        padding: EdgeInsets.symmetric(vertical: 4.v),
        decoration: AppDecoration.fillWhiteA,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 1.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox( width: 9.h );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return ListrectangleItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildList(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 129.v,
        padding: EdgeInsets.symmetric(vertical: 4.v),
        decoration: AppDecoration.fillWhiteA,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 1.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox( width: 9.h );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return ListItemWidget();
          },
        ),
      ),
    );
  }

  /// Navigate to chat
  onTapBtnNotification(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatAdmin);
  }
}