import 'package:demo/utils/colors.dart';
import 'package:demo/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    @required this.label,
    @required this.controller,
    @required this.suffix,
    @required this.isVisibilty,
    this.inputType,
    this.maxLines,
    this.size,
    this.spacing,
    this.minLines,
    this.vertPad,
    this.hint,
    this.validator,
    this.readOnly,
    this.maxLength,
    this.labelSize,
    this.isBold = false,
  });

  final String? label;
  final TextEditingController? controller;
  final Widget? suffix;
  final bool? isVisibilty;
  final TextInputType? inputType;
  final int? maxLines;
  final double? size;
  final double? spacing;
  final double? vertPad;
  final int? minLines;
  final String? hint;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final int? maxLength;
  final double? labelSize;
  final bool? isBold;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var b = SizeConfig.screenWidth / 375;

    var outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          key: key,
          readOnly: readOnly ?? false,
          validator: validator ?? (val) {
            return null;
          },
          style: TextStyle(
            fontSize: size ?? b * 14,
            fontWeight: FontWeight.w500,
            letterSpacing: spacing ?? 0,
          ),
          maxLength: maxLength ?? null,
          controller: controller,
          keyboardType: inputType ?? TextInputType.text,
          maxLines: maxLines ?? 1,
          minLines: minLines ?? 1,
          decoration: InputDecoration(
            isDense: true,
            counterText: '',
            prefixIcon: suffix != null
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      sb(15),
                      suffix!,
                    ],
                  )
                : null,
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: size ?? b * 12,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.5),
              letterSpacing: spacing ?? 0,
            ),
            errorStyle: TextStyle(
              fontSize: b * 10,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: spacing ?? 0,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: b * 12,
              vertical: vertPad ?? 12,
            ),
            focusedBorder: outlineInputBorder,
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            border: outlineInputBorder,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            enabledBorder: outlineInputBorder,
          ),
        )
      ],
    );
  }
}
