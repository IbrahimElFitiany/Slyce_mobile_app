import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:slyce/routes/routes.dart';
import 'package:slyce/shared/app_colors.dart';


Future<void> main() async {
  await dotenv.load(fileName: '.env.development');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.cream,
        colorScheme: ColorScheme.light(
          primary: AppColors.green,
          onPrimary: AppColors.charcoal,
          secondary: AppColors.darkGreen,
          surface: AppColors.charcoal,
          onSurface: AppColors.charcoal,
        ),
        
      ),
      routerConfig: router,
    );
  }
}