import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/theme/App_colors.dart';
import 'package:gym_dashboard_project/view/pages/main_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gym_dashboard_project/router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Example Gym',
      locale: Locale("fa", "IR"),
      supportedLocales: [Locale('fa')],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      theme: ThemeData(
        fontFamily: "modam",
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
      
      builder: (context, child) {
         return Directionality(
           textDirection: TextDirection.rtl,
           child: child!,
          );  
      } 
    );
  }
}
