import 'dart:math';

import 'package:flutter/material.dart';

class SineCurve extends Curve {
  const SineCurve();

  @override
  double transformInternal(double t) {
    double fx = sin(t);
    return fx;
  }
}
