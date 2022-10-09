import 'package:keyur_s_application1/presentation/clock_screen/binding/clock_binding.dart';
import 'package:keyur_s_application1/presentation/clock_screen/home_clock_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String clockScreen = '/clock_screen';

  static String digitalClockScreen = '/digital_clock_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    // GetPage(
    //   name: clockScreen,
    //   page: () => ClockScreen(),
    //   bindings: [
    //     ClockBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: digitalClockScreen,
    //   page: () => DigitalClockScreen(),
    //   bindings: [
    //     DigitalClockBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: appNavigationScreen,
    //   page: () => AppNavigationScreen(),
    //   bindings: [
    //     AppNavigationBinding(),
    //   ],
    // ),
    GetPage(
      name: initialRoute,
      page: () => HomeClockScreen(),
      bindings: [
        ClockBinding(),
      ],
    )
  ];
}
