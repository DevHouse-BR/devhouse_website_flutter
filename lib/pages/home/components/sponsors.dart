import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../components/responsive.dart';

final List<String> sponsorsLogo = ['brand1.png'];

class Sponsors extends Responsive {
  const Sponsors({Key? key}) : super(key: key);

  @override
  Widget buildUi(BuildContext context, double width) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Center(
        child: ResponsiveWrapper(
          minWidth: width,
          maxWidth: width,
          child: Wrap(
            runSpacing: 50,
            spacing: 50,
            children: List.generate(
              5,
              (index) => Container(
                constraints: BoxConstraints(
                  maxWidth: isMobile(context)
                      ? ((width / 3) - 50)
                      : ((width / 5) - 50),
                ),
                height: 20,
                child: Image.asset('assets/images/brand${index + 1}.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
