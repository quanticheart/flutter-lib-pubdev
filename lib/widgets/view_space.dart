import 'package:flutter/material.dart';

// Create Space Widget
/// This Widget create a simple Square for Space in View
class Space extends StatelessWidget {
  const Space({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 16,
      width: 16,
    );
  }
}
