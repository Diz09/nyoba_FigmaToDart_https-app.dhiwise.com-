// ignore_for_file: duplicate_ignore, unused_import

import 'dart:js';

import 'package:flutter/material.dart';
import '../core/app_export.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/sign_in_one_screen/sign_in_one_screen.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/change_password_screen/change_password_screen.dart';

import '../presentation/container_screen/container_screen.dart'; // homecontainer1

// import '../presentation/home_page/home_page.dart';

import '../presentation/menu_base_page/menu_base_page.dart';
import '../presentation/menu_select_screen/menu_select_screen.dart';
import '../presentation/menu_selected_screen/menu_selected_screen.dart';
// import '../presentation/keranjang_page/keranjang_page.dart';
// import '../presentation/setting_page/setting_page.dart';
import '../presentation/daftar_transaksi_screen/daftar_transaksi_screen.dart';

import '../presentation/detail_pesanan_screen/detail_pesanan_screen.dart';

import '../presentation/bayar_screen/bayar_screen.dart';
import '../presentation/metode_pembayaran_screen/metode_pembayaran_screen.dart';
import '../presentation/pembayaran_screen/pembayaran_screen.dart';
import '../presentation/selesaikan_pesanan_screen/selesaikan_pesanan_screen.dart';

import '../presentation/chat_admin_screen/chat_admin_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signInOneScreen = '/sign_in_one_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String homePage = '/home_page';
  static const String containerScreen = '/container_screen';
  static const String chatAdmin = '/chat_screen';
  static const String menuPage = '/menu_page';
  static const String menuSelectedPage = '/menu_selected_page';
  static const String menuSelectPage = '/menu_select_page';
  static const String selesaikanPesanan = '/selesaikan_pesanan';
  static const String bayarScreen = '/bayar_screen';
  static const String metodeBayarScreen = '/metode_bayar_screen';
  static const String pembayaran = '/pembayaran_screen';
  static const String keranjangPage = '/keranjang_page';
  static const String settingPage = '/setting_page';
  static const String daftarTransaksiScreen = '/daftar_transaksi';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    signInScreen: (context) => SignInScreen(),
    signInOneScreen: (context) => SignInOneScreen(),
    signUpScreen: (context) => SignUpScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SignInScreen(),

    containerScreen: (context) => ContainerScreen(),
    chatAdmin: (context) => ChatAdminScreen(),
    daftarTransaksiScreen: (context) => DaftarTransaksiScreen(),
  };
}
