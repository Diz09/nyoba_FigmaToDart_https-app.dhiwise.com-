import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable
class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key})
      :super( key: key );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 120.adaptSize,
          width: 120.adaptSize,
          margin: EdgeInsets.only(bottom: 1.v),
          decoration: BoxDecoration(
            color: appTheme.blueGray100,
            borderRadius: BorderRadius.circular(7.h),
          ),
        ),
      ),
    );
  }
}