import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:speak_nigerian/features/unboarding/presentation/unboarding.screen.dart';
import 'package:speak_nigerian/services/root_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return GetMaterialApp(
      initialBinding: RootBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Speak Africa',
      home: const UnboardingScreen(),
    );
  }
}
