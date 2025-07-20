import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/components/App_colors.dart';
import 'package:gym_dashboard_project/view/main_page/main_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Gym',
      locale: Locale("fa"),
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
      home: MainPage()
    );
  }
}
