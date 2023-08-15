import 'package:flutter/services.dart';
import 'package:todo/core/utils/common_import.dart';

// class CustomTextField extends StatefulWidget {
//   final TextEditingController controller;
//   final bool readOnly;
//   final int maxLength;
//   final TextInputFormatter textInputFormatter;
//   const CustomTextField(
//       {super.key,
//       this.readOnly = false,
//       required this.controller,
//       this.maxLength = 10,
//       required this.textInputFormatter});

//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }

// class _CustomTextFieldState extends State<CustomTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: widget.controller,
//     );
//   }
// }

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool readOnly;
  final int maxLength;
  final Icon prefixIcon;
  final String hintText;
  const CustomTextField({
    super.key,
    required this.prefixIcon,
    this.readOnly = false,
    required this.controller,
    this.maxLength = 10,
    this.hintText = "",
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: screenHeight * 0.8,
        height: screenHeight * 0.07,
        padding: EdgeInsets.all(screenWidth * 0.03),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.white,
            border: Border.all(color: Colors.grey)),
        child: Center(
          child: Row(
            children: <Widget>[
              prefixIcon,
              SizedBox(
                width: screenWidth * 0.04,
              ),
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration.collapsed(
                      hintText: hintText,
                      hintStyle: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
