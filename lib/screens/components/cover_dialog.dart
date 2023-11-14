import 'dart:async';

import 'package:flutter/material.dart';

showCoverDialog({required BuildContext context, required String urlImage}) {
  double scale = 0;
  showDialog(
    context: context,
    barrierColor: Colors.black.withAlpha(200),
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          Timer timer = Timer(const Duration(milliseconds: 10), () {
            setState(() {
              scale = 1;
            });
          });
          return Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: AnimatedScale(
              scale: scale,
              duration: const Duration(milliseconds: 500),
              onEnd: () {
                timer.cancel();
              },
              child: Image.network(
                urlImage,
                height: MediaQuery.of(context).size.height * 0.6,
                fit: BoxFit.contain,
              ),
            ),
          );
        },
      );
    },
  );
}
