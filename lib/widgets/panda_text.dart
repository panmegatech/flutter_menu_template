import 'package:flutter/material.dart';

class PandaText extends StatelessWidget {
  final String data;
  final double? fontSize;
  final FontWeight? fontWeight;

  const PandaText(this.data, {super.key, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: fontSize ?? 20,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
