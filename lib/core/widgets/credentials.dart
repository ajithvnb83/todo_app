import 'package:todo/core/utils/common_import.dart';

class CreditialWidget extends StatefulWidget {
  final Widget topWidget;
  final Widget bottomWidget;
  const CreditialWidget({
    super.key,
    required this.topWidget,
    required this.bottomWidget,
  });

  @override
  State<CreditialWidget> createState() => _CreditialWidgetState();
}

class _CreditialWidgetState extends State<CreditialWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: screenHeight / 2,
              width: screenWidth,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(55),
                ),
              ),
              child: widget.topWidget,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: screenHeight / 2,
              width: screenWidth,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(55),
                ),
              ),
              child: widget.bottomWidget,
            ),
          ),
        ],
      ),
    );
  }
}
