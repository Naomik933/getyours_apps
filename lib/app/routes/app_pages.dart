import 'package:get/get.dart';

import '../modules/datadiri/bindings/datadiri_binding.dart';
import '../modules/datadiri/views/datadiri_view.dart';
import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/katalog/bindings/katalog_binding.dart';
import '../modules/katalog/views/katalog_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/package/bindings/package_binding.dart';
import '../modules/package/views/package_view.dart';
import '../modules/pemesanan/bindings/pemesanan_binding.dart';
import '../modules/pemesanan/views/pemesanan_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/term/bindings/term_binding.dart';
import '../modules/term/views/term_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.KATALOG,
      page: () => KatalogView(),
      binding: KatalogBinding(),
    ),
    GetPage(
      name: _Paths.PACKAGE,
      page: () => PackageView(),
      binding: PackageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.DATADIRI,
      page: () => DatadiriView(),
      binding: DatadiriBinding(),
    ),
    GetPage(
      name: _Paths.TERM,
      page: () => TermView(),
      binding: TermBinding(),
    ),
    GetPage(
      name: _Paths.PEMESANAN,
      page: () => PemesananView(),
      binding: PemesananBinding(),
    ),
  ];
}
