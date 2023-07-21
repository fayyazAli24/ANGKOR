import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'src/core/routes/appRoutes.dart';
import 'src/core/routes/routeNames.dart';
import 'src/core/utils/appColors.dart';
import 'src/view/screen/dashBoardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        theme: ThemeData(
            colorScheme: ThemeData().colorScheme.copyWith(
              primary: AppColors.mainColor,
              secondary: AppColors.pureWhite,
            ),
            fontFamily: "urbanist"
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: RouteNames.bottomNav,
        getPages: AppRoutes.routes,
        home: const DashBoard(),
      );
    });
  }
}
