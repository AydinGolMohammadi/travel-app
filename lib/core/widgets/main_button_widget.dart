import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/constants.dart';

class MainButton extends StatelessWidget {
  final bool isEnabled;
  final String enabledText;
  final String disabledText;
  final double height;
  final double borderRadius;
  final double fontSize;
  final Function() onTap;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final Color borderColor;
  final Shadow? boxShadow;
  final Color backgroundColor;
  final Color enableTextColor;
  final FontWeight fontWeight;
  final Color? bgColor;

  const MainButton({
    Key? key,
    required this.isEnabled,
    required this.onTap,
    this.enabledText = '',
    this.disabledText = '',
    this.buttonStyle,
    this.boxShadow,
    this.height = 55,
    this.textStyle,
    this.bgColor,
    this.borderRadius = 15,
    this.fontSize = 18,
    this.borderColor = kColorPrimary,
    this.backgroundColor = kColorPrimary,
    this.enableTextColor = Colors.white,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: isEnabled
            ? ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(
                  const Size(190, 54),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  bgColor ?? kColorPrimary,
                ),
                elevation: MaterialStateProperty.resolveWith<double>(
                  // As you said you dont need elevation. I'm returning 0 in both case
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return 0;
                    }
                    return 0; // Defer to the widget's default.
                  },
                ))
            : ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(
                  const Size(190, 54),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Palette.kColorPrimary[16],
                ),
                elevation: MaterialStateProperty.resolveWith<double>(
                  // As you said you dont need elevation. I'm returning 0 in both case
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return 0;
                    }
                    return 0; // Defer to the widget's default.
                  },
                ),
              ),
        child: Text(
          isEnabled ? enabledText : disabledText,
          textAlign: TextAlign.center,
          style: isEnabled
              ? TextStyle(
                  color: kColorWhite,
                  fontSize: fontSize,
                  fontFamily: faPrimaryFontFamily,
                  fontWeight: FontWeight.w500,
                )
              : TextStyle(
                  color: Palette.kColorPrimary[8],
                  fontSize: fontSize,
                  fontFamily: faPrimaryFontFamily,
                  fontWeight: FontWeight.w900,
                ),
        ),
      ),
    );
  }
}
