import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:todo/core/utils/common_import.dart';
import 'package:todo/core/widgets/credentials.dart';
import 'package:todo/core/widgets/logo_with_name.dart';
import 'package:todo/features/fogot_password_screen/presentation/pages/change_password.dart';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({super.key});

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  OtpFieldController otpController = OtpFieldController();

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
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppSizedBox.h40,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                        name: ConstString.enterOTP,
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  AppSizedBox.h25,
                  OTPTextField(
                      controller: otpController,
                      length: 5,
                      width: MediaQuery.of(context).size.width,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: 45,
                      fieldStyle: FieldStyle.box,
                      outlineBorderRadius: 15,
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      onChanged: (pin) {},
                      onCompleted: (pin) {}),
                  AppSizedBox.h20,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: CustomText(
                            name: ConstString.sendAgain,
                            color: AppColors.secondaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                  ),
                  AppSizedBox.h20,
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, createRoute(ChangePasswordScreen()));
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
                            name: ConstString.verify,
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
