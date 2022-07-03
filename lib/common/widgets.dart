import 'package:flutter/material.dart';

/// 按钮组件
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.height,
    this.widget,
    this.radius,
    this.onPressed,
    this.text,
  }) : super(key: key);

  final String? text;
  final double? height;
  final double? widget;
  final double? radius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // 直接用 ElevatedButton 组件就可以了
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        minimumSize: MaterialStateProperty.all(
            Size(widget ?? double.infinity, height ?? double.infinity)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radius ?? 18),
            ),
          ),
        ),
      ),
      child: Text(
        text ?? "",
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
    );
  }
}
