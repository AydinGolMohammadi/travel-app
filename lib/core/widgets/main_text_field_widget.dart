import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/core/constants/constants.dart';

class MainTextField extends StatelessWidget {
  final String? labelText;
  final String? errorText;
  final String? hintText;
  final TextEditingController? textController;
  final FocusNode? focusNode;
  final bool isEmpty;
  final bool obscureText;
  final Function(String) onChanged;
  final Function(String)? onSubmitted;
  final Function() onIconTap;
  final TextInputType keyboardType;
  final Color fillColor;
  final bool isEnabled;
  final int? maxLength;
  final int? minLine;
  final int? maxLine;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;

  const MainTextField({
    Key? key,
    required this.onIconTap,
    required this.isEmpty,
    required this.onChanged,
    this.labelText,
    this.textController,
    this.focusNode,
    this.onSubmitted,
    this.textInputAction,
    this.maxLine,
    this.minLine,
    this.isEnabled = true,
    this.maxLength,
    this.errorText,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.name,
    this.fillColor = Colors.white,
    this.suffixIcon = const Icon(
      Icons.cancel,
      color: kColorGray3,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      obscureText: obscureText,
      minLines: maxLine,
      maxLines: maxLine,
      textInputAction: textInputAction,
      maxLength: maxLength,
      enabled: isEnabled,
      controller: textController,
      focusNode: focusNode,
      onChanged: (text) {
        onChanged(text);
      },
      keyboardType: keyboardType,
      textDirection: TextDirection.ltr,
      inputFormatters: keyboardType == TextInputType.number
          ? [FilteringTextInputFormatter.digitsOnly]
          : null,
      decoration: InputDecoration(
        hintStyle: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Palette.kColorNature[8]),
        errorText: errorText == '' ? null : errorText,
        counterText: '',
        hintText: hintText,
        labelText: labelText,
        fillColor: fillColor,
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        suffixIcon: isEmpty && focusNode?.hasFocus == true && isEnabled
            ? InkWell(
                onTap: () {
                  onIconTap();
                },
                child: suffixIcon,
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Palette.kColorNature[8],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Palette.kColorNature[12],
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: kColorError,
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: kColorError,
            width: 1.0,
          ),
        ),
      ),
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}

class MainPasswordTextField extends StatelessWidget {
  final String? labelText;
  final String? errorText;
  final String? hintText;
  final bool obscureText;
  final bool isEnabled;
  final int? maxLength;
  final int? minLine;
  final int? maxLine;
  final Color fillColor;
  final Widget? suffixIcon1;
  final Widget? suffixIcon2;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? textController;
  final FocusNode? focusNode;
  final Function(String) onChanged;
  final Function(String)? onSubmitted;
  final Function() onIconTap;

  const MainPasswordTextField({
    Key? key,
    required this.onIconTap,
    required this.onChanged,
    required this.obscureText,
    this.labelText,
    this.textController,
    this.focusNode,
    this.onSubmitted,
    this.textInputAction,
    this.maxLine,
    this.minLine,
    this.isEnabled = true,
    this.maxLength,
    this.errorText,
    this.hintText,
    this.suffixIcon1,
    this.suffixIcon2,
    this.keyboardType = TextInputType.name,
    this.fillColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      obscureText: obscureText,
      textInputAction: textInputAction,
      maxLength: maxLength,
      enabled: isEnabled,
      controller: textController,
      focusNode: focusNode,
      onChanged: (text) {
        onChanged(text);
      },
      keyboardType: keyboardType,
      textDirection: TextDirection.ltr,
      inputFormatters: keyboardType == TextInputType.number
          ? [FilteringTextInputFormatter.digitsOnly]
          : null,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Palette.kColorNature[8],
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
            color: Palette.kColorNature[12],
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: kColorError,
            width: 1.0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: kColorError,
            width: 1.0,
          ),
        ),
        errorText: errorText == '' ? null : errorText,
        counterText: '',
        hintText: hintText,
        labelText: labelText,
        fillColor: fillColor,
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        suffixIcon: GestureDetector(
          onTap: () {
            onIconTap();
          },
          child: obscureText ? suffixIcon1 : suffixIcon2,
        ),
      ),
    );
  }
}
