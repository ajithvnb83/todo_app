import 'package:todo/core/utils/app_sizedbox.dart';
import 'package:todo/core/utils/common_import.dart';
import 'package:todo/core/utils/navigations.dart';

import 'package:todo/core/widgets/credentials.dart';
import 'package:todo/core/widgets/custom_text_widget.dart';
import 'package:todo/core/widgets/custom_textfield.dart';
import 'package:todo/core/widgets/logo_with_name.dart';
import 'package:todo/features/fogot_password_screen/presentation/pages/verify_otp_screen.dart';

class GenerateOTPScreeen extends StatefulWidget {
  const GenerateOTPScreeen({super.key});

  @override
  State<GenerateOTPScreeen> createState() => _GenerateOTPScreeenState();
}

class _GenerateOTPScreeenState extends State<GenerateOTPScreeen> {
  TextEditingController emailTextEditingController = TextEditingController();
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
                name: ConstString.forgotPassword,
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
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, createRoute(const VerifyOTPScreen()));
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
                            name: ConstString.generateOTP,
                            color: AppColors.whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: CustomText(
                          name: ConstString.cancel,
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
