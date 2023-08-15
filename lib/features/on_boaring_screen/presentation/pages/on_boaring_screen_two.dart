import 'package:todo/core/utils/common_import.dart';
import 'package:todo/features/on_boaring_screen/presentation/pages/on_boarding_screen_three.dart';

class OnBoardingScreenTwo extends StatelessWidget {
  const OnBoardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.onBoardingPage1Color,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.13,
            ),
            Text(
              "Mark HomeWork",
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.josefinSans().fontFamily,
              ),
            ),
            Text(
              "As Completed",
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.josefinSans().fontFamily,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.65,
              child: Center(
                child: SvgPicture.asset(
                  "assets/svg/on_boarding_page_2.svg",
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 65,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, createRoute(const OnBoardingScreenThree()));
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: AppColors.primaryColor, // <-- Button color
                  foregroundColor: Colors.red, // <-- Splash color
                ),
                child: const Center(
                  child: Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
