import 'package:todo/core/utils/common_import.dart';
import 'package:todo/core/widgets/credentials.dart';
import 'package:todo/core/widgets/custom_textfield.dart';
import 'package:todo/core/widgets/logo_with_name.dart';
import 'package:todo/features/signup_screen/presentation/cubit/signup_screen_cubit.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController displayNameTextEditingController =
      TextEditingController();

  @override
  void dispose() {
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    displayNameTextEditingController.dispose();
    super.dispose();
  }

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
              child: BlocConsumer<SignupScreenCubit, SignupScreenState>(
                  listener: (context, state) {
                if (state is SignupScreenSuccessState) {
                  emailTextEditingController.clear();
                  passwordTextEditingController.clear();
                  displayNameTextEditingController.clear();
                  CommonToast().commonToast(message: "Successfully Registered");
                } else if (state is SignupScreenErrorState) {
                  CommonToast()
                      .commonToast(message: state.failureWithMessage.message);
                }
              }, builder: (context, state) {
                return Column(
                  children: [
                    AppSizedBox.h40,
                    CustomTextField(
                      controller: displayNameTextEditingController,
                      hintText: "Enter Display Name",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: AppColors.blackColor,
                      ),
                    ),
                    AppSizedBox.h20,
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
                        // Navigator.push(
                        //     context, createRoute(const GenerateOTPScreeen()));
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
                );
              }),
            ),
          ),
        ));
  }
}
