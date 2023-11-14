import 'package:flutter/material.dart';

showCoverDialog({required BuildContext context, required String urlImage}) {
  showDialog(
    context: context,
    barrierColor: Colors.black.withAlpha(200),
    builder: (context) {
      return Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Image.network(
          urlImage,
          height: MediaQuery.of(context).size.height * 0.6,
          fit: BoxFit.contain,
        ),
      );
    },
  );
}
