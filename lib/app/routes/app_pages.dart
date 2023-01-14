import 'package:get/get.dart';

import 'package:tokopedia/app/modules/EmailCheck/bindings/email_check_binding.dart';
import 'package:tokopedia/app/modules/EmailCheck/views/email_check_view.dart';
import 'package:tokopedia/app/modules/Register/bindings/register_binding.dart';
import 'package:tokopedia/app/modules/Register/views/register_view.dart';
import 'package:tokopedia/app/modules/ResetPassword/bindings/reset_password_binding.dart';
import 'package:tokopedia/app/modules/ResetPassword/views/reset_password_view.dart';
import 'package:tokopedia/app/modules/home/bindings/home_binding.dart';
import 'package:tokopedia/app/modules/home/views/home_view.dart';
import 'package:tokopedia/app/modules/login/bindings/login_binding.dart';
import 'package:tokopedia/app/modules/login/views/login_view.dart';
import 'package:tokopedia/app/modules/splashScreen/bindings/splash_screen_binding.dart';
import 'package:tokopedia/app/modules/splashScreen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REGISTER;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.EMAIL_CHECK,
      page: () => EmailCheckView(),
      binding: EmailCheckBinding(),
    ),
  ];
}
