import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TextStyles {
  static final headerTitle = TextStyle(
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
}

extension StringTextStyles on String {
  Widget get headerTitle => this.text.bold.blue400.size(18).make();
}
