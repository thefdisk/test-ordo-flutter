import 'package:auto_route/auto_route.dart';

import '../pages/main/main_page.dart';
import '../pages/main/pages/cart/cart_page.dart';
import '../pages/main/pages/home/home_page.dart';
import '../pages/main/pages/order/order_page.dart';
import '../pages/main/pages/profile/profile_page.dart';
import '../pages/main/pages/property/property_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// MAIN PAGE
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: PropertyRoute.page),
            AutoRoute(page: OrderRoute.page),
            AutoRoute(page: CartRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
