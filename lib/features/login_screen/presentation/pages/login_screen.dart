import 'package:todo/core/utils/app_sizedbox.dart';
import 'package:todo/core/utils/common_import.dart';
import 'package:todo/core/widgets/credentials.dart';
import 'package:todo/core/widgets/custom_text_widget.dart';
import 'package:todo/core/widgets/logo_with_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CreditialWidget(
        topWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.10,
            ),
            const Spacer(),
            const LogoWithNameWidget(),
            const Spacer(),
            CustomText(
                name: ConstString.signIn,
                color: AppColors.whiteColor,
                fontSize: 24,
                fontWeight: FontWeight.w600),
            AppSizedBox.h45,
          ],
        ),
        bottomWidget: Column(
          children: [],
        ));
  }
}
