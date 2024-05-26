import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
        key: key,
      );

  @override
  Widget build(BuildContext) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.orange100,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 200.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage1,
                height: 400.v,
                width: 300.v,
                radius: BorderRadius.circular(
                  147.h,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}