import 'package:flutter/material.dart';


extension MsgExt on BuildContext {
  snackBar(dynamic msg) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(msg.toString().trim()),
      backgroundColor: Colors.black26,
      duration: const Duration(milliseconds: 400),
    ));
  }
}
