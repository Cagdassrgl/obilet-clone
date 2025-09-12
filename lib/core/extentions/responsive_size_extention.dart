// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

extension ResponsiveSizeExtention on num {
  double get w =>
      this *
      (MediaQueryData.fromView(WidgetsBinding.instance.window).size.width /
          375);
  double get h =>
      this *
      (MediaQueryData.fromView(WidgetsBinding.instance.window).size.height /
          812);
  double get sp =>
      this *
      (MediaQueryData.fromView(WidgetsBinding.instance.window).size.width /
          375);
}
