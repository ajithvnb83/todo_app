import 'package:fluttertoast/fluttertoast.dart';
import 'package:todo/core/utils/app_colors.dart';

class CommonToast {
  Future<bool?> commonToast({required String message}) {
    return Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.primaryColor,
        textColor: AppColors.secondaryColor,
        fontSize: 16.0);
  }
}
