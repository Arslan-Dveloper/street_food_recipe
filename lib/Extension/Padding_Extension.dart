import 'package:flutter/material.dart';

extension PaddingAll on Widget {
  Widget onlyPadding(
      {double left = 0, double right = 0, double top = 0, double bottom = 0}) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: this,
    );
  }

  Widget symmetricPadding({double horizontal = 0, double vertical = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: this,
    );
  }

  Widget allPadding({double all = 0}) {
    return Padding(
      padding: EdgeInsets.all(all),
      child: this,
    );
  }
}
