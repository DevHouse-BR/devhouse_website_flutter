import 'package:flutter/material.dart';

abstract class Responsive extends StatelessWidget {
  final double desktopMaxWidth = 1000.0; // TODO: maybe 1200?
  final double tabletMaxWidth = 760.0; // TODO: maybe 600?

  const Responsive({Key? key}) : super(key: key);

  @protected
  bool isMobile(BuildContext context) {
    return (MediaQuery.of(context).size.width < tabletMaxWidth);
  }

  @protected
  bool isTablet(BuildContext context) {
    return (MediaQuery.of(context).size.width >= tabletMaxWidth &&
        MediaQuery.of(context).size.width < desktopMaxWidth);
  }

  @protected
  bool isDesktop(BuildContext context) {
    return (MediaQuery.of(context).size.width >= desktopMaxWidth);
  }

  @protected
  double getMobileMaxWidth(BuildContext context) {
    return MediaQuery.of(context).size.width * .8;
  }

  @protected
  Widget buildUi(BuildContext context, double width);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= desktopMaxWidth) {
          return buildUi(context, desktopMaxWidth);
        } else if (constraints.maxWidth >= tabletMaxWidth) {
          return buildUi(context, tabletMaxWidth);
        } else {
          return buildUi(context, getMobileMaxWidth(context));
        }
      },
    );
  }
}
