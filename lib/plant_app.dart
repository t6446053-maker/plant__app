import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plt/routes/app_router.dart';
import 'package:plt/routes/app_routes.dart';

class PlantApp extends StatelessWidget {
  const PlantApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      child:  MaterialApp(
      onGenerateRoute: appRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
    )
  
    );
    
   
  }
}
