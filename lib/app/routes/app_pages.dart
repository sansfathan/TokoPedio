import 'package:get/get.dart';

import 'package:tokopedia/app/modules/EmailCheck/bindings/email_check_binding.dart';
import 'package:tokopedia/app/modules/EmailCheck/views/email_check_view.dart';
import 'package:tokopedia/app/modules/Register/bindings/register_binding.dart';
import 'package:tokopedia/app/modules/Register/views/register_view.dart';
import 'package:tokopedia/app/modules/ResetPassword/bindings/reset_password_binding.dart';
import 'package:tokopedia/app/modules/ResetPassword/views/reset_password_view.dart';
import 'package:tokopedia/app/modules/createSlider/bindings/create_slider_binding.dart';
import 'package:tokopedia/app/modules/createSlider/views/create_slider_view.dart';
import 'package:tokopedia/app/modules/detail/bindings/detail_binding.dart';
import 'package:tokopedia/app/modules/detail/views/detail_view.dart';
import 'package:tokopedia/app/modules/home/bindings/home_binding.dart';
import 'package:tokopedia/app/modules/home/views/home_view.dart';
import 'package:tokopedia/app/modules/homeAdmin/bindings/home_admin_binding.dart';
import 'package:tokopedia/app/modules/homeAdmin/views/home_admin_view.dart';
import 'package:tokopedia/app/modules/homePage/bindings/home_page_binding.dart';
import 'package:tokopedia/app/modules/homePage/views/home_page_view.dart';
import 'package:tokopedia/app/modules/login/bindings/login_binding.dart';
import 'package:tokopedia/app/modules/login/views/login_view.dart';
import 'package:tokopedia/app/modules/login_with_phone/bindings/login_with_phone_binding.dart';
import 'package:tokopedia/app/modules/login_with_phone/views/login_with_phone_view.dart';
import 'package:tokopedia/app/modules/otp_verification/bindings/otp_verification_binding.dart';
import 'package:tokopedia/app/modules/otp_verification/views/otp_verification_view.dart';
import 'package:tokopedia/app/modules/produk_data/bindings/produk_data_binding.dart';
import 'package:tokopedia/app/modules/produk_data/views/produk_data_view.dart';
import 'package:tokopedia/app/modules/sliderData/bindings/slider_data_binding.dart';
import 'package:tokopedia/app/modules/sliderData/views/slider_data_view.dart';
import 'package:tokopedia/app/modules/splashScreen/bindings/splash_screen_binding.dart';
import 'package:tokopedia/app/modules/splashScreen/views/splash_screen_view.dart';
import 'package:tokopedia/app/modules/updateSlider/bindings/update_slider_binding.dart';
import 'package:tokopedia/app/modules/updateSlider/views/update_slider_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DETAIL;

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
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_WITH_PHONE,
      page: () => LoginWithPhoneView(),
      binding: LoginWithPhoneBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFICATION,
      page: () => OtpVerificationView(),
      binding: OtpVerificationBinding(),
    ),
    GetPage(
      name: _Paths.HOME_ADMIN,
      page: () => HomeAdminView(),
      binding: HomeAdminBinding(),
    ),
    GetPage(
      name: _Paths.SLIDER_DATA,
      page: () => SliderDataView(),
      binding: SliderDataBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_SLIDER,
      page: () => UpdateSliderView(),
      binding: UpdateSliderBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_SLIDER,
      page: () => CreateSliderView(),
      binding: CreateSliderBinding(),
    ),
    GetPage(
      name: _Paths.PRODUK_DATA,
      page: () => ProdukDataView(),
      binding: ProdukDataBinding(),
    ),
  ];
}
