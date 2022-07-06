import 'package:flutter/material.dart';

abstract class Responsive extends StatelessWidget {
  static const double desktopMaxWidth = 1000; // TODO: maybe 1200?
  static const double tabletMaxWidth = 600; // TODO: maybe 760?

  const Responsive({Key? key}) : super(key: key);

  static bool isMobile(BuildContext context) {
    return (MediaQuery.of(context).size.width < tabletMaxWidth);
  }

  static bool isTablet(BuildContext context) {
    return (MediaQuery.of(context).size.width >= tabletMaxWidth &&
        MediaQuery.of(context).size.width < desktopMaxWidth);
  }

  static bool isDesktop(BuildContext context) {
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
