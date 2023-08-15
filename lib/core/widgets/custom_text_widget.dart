import 'package:todo/core/utils/common_import.dart';

class CustomText extends StatelessWidget {
  final String name;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  const CustomText({
    super.key,
    required this.name,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: GoogleFonts.josefinSans().fontFamily,
      ),
    );
  }
}
