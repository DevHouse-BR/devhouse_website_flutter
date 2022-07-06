import 'package:flutter/material.dart';

class DHMouseRegion extends StatelessWidget {
  final Widget child;
  const DHMouseRegion({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: child,
    );
  }
}
