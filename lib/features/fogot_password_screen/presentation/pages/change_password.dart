import 'package:todo/core/utils/common_import.dart';
import 'package:todo/core/widgets/credentials.dart';
import 'package:todo/core/widgets/custom_textfield.dart';
import 'package:todo/core/widgets/logo_with_name.dart';
import 'package:todo/features/login_screen/presentation/pages/login_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController newPasswordTextEditingController =
      TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
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
                    controller: newPasswordTextEditingController,
                    hintText: ConstString.enterNewfirmPassword,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.blackColor,
                    ),
                  ),
                  AppSizedBox.h20,
                  CustomTextField(
                    controller: confirmPasswordTextEditingController,
                    hintText: ConstString.enterConfirmPassword,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors.blackColor,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, createRoute(const LoginScreen()));
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
