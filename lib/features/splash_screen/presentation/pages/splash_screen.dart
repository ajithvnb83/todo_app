import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/core/utils/app_colors.dart';
import 'package:todo/core/utils/page_size.dart';
import 'package:todo/features/login_screen/presentation/pages/login_screen.dart';

import '../../../../core/widgets/logo_with_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigatePage();
    super.initState();
  }

  navigatePage() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: screenHeight,
          width: screenWidth,
          color: AppColors.primaryColor,
          child: const LogoWithNameWidget()),
    );
  }
}
