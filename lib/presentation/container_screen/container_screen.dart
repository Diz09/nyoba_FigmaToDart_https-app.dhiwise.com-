import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../home_page/home_page.dart';
import '../keranjang_page/keranjang_page.dart';
import '../menu_base_page/menu_base_page.dart';
import '../setting_page/setting_page.dart';

// ignore_for_file: must_be_immutable
class ContainerScreen extends StatelessWidget {
  ContainerScreen({Key? key})
      : super( key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.homePage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
          navigatorKey.currentContext!, getCurrentRoute(type)
        );
      },
    );
  }
  /// Handling route bottom click
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Menu:
        return AppRoutes.menuPage;
      case BottomBarEnum.Cart:
        return AppRoutes.keranjangPage;
      case BottomBarEnum.Setting:
        return AppRoutes.settingPage;
      default:
        return "/";
    }
  }

  /// Handling page on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.menuPage:
        return MenuBasePage();
      case AppRoutes.keranjangPage:
        return KeranjangPage();
      case AppRoutes.settingPage:
        return SettingPage();
      default:
        return DefaultWidget();
    }
  }
}