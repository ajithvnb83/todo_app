import 'package:todo/core/utils/app_sizedbox.dart';
import 'package:todo/core/utils/common_import.dart';
import 'package:todo/core/widgets/custom_text_widget.dart';

class LogoWithNameWidget extends StatelessWidget {
  const LogoWithNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/svg/app_icon.svg",
          height: screenHeight * 0.15,
          colorFilter: ColorFilter.mode(
            AppColors.secondaryColor,
            BlendMode.srcIn,
          ),
        ),
        AppSizedBox.h25,
        CustomText(
          name: ConstString.appName,
          color: AppColors.secondaryColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )
      ],
    );
  }
}
