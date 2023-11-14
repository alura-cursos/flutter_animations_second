import 'package:flutter/material.dart';

showCoverDialog({required BuildContext context, required String urlImage}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Image.network(
          urlImage,
        ),
      );
    },
  );
}
