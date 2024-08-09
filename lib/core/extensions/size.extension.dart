import 'package:flutter/material.dart';

extension SizeExtension on num {
  Widget get v {
    return SizedBox(height: toDouble());
  }

  Widget get h {
    return SizedBox(width: toDouble());
  }
}
