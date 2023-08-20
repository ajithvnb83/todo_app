import 'package:todo/core/utils/common_import.dart';
import 'package:todo/core/widgets/credentials.dart';
import 'package:todo/core/widgets/custom_textfield.dart';
import 'package:todo/core/widgets/logo_with_name.dart';
import '../../../fogot_password_screen/presentation/pages/generate_otp_screen.dart';

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
        bottomWidget: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: SizedBox(
              height: screenHeight / 2,
              child: Column(
                children: [
                  AppSizedBox.h40,
                  CustomTextField(
                    controller: emailTextEditingController,
                    hintText: "Enter Email",
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: AppColors.blackColor,
                    ),
                  ),
                  AppSizedBox.h20,
                  CustomTextField(
                    controller: passwordTextEditingController,
                    hintText: "Enter Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.blackColor,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, createRoute(const GenerateOTPScreeen()));
                    },
                    child: Material(
                      clipBehavior: Clip.antiAlias,
                      color: Colors.black,
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: screenWidth * 0.50,
                        color: AppColors.secondaryColor,
                        child: CustomText(
                            name: ConstString.signIn,
                            color: AppColors.whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: CustomText(
                          name: ConstString.forgotPassword,
                          color: AppColors.secondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  AppSizedBox.h25,
                ],
              ),
            ),
          ),
        ));
  }
}
