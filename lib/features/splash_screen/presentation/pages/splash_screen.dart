import 'package:todo/core/utils/common_import.dart';

import 'package:todo/core/widgets/logo_with_name.dart';
import 'package:todo/features/on_boaring_screen/presentation/pages/on_boarding_screen_one.dart';

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
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnBoardingScreenOne()));
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
