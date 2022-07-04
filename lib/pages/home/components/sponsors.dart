import 'package:devhouse_website_flutter/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/constants.dart';

final List<String> sponsorsLogo = ['brand1.png'];

class Sponsors extends StatelessWidget {
  const Sponsors({Key? key}) : super(key: key);

  Widget _buildUi(BuildContext context, double width) {
    return Center(
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
                maxWidth: ScreenHelper.isMobile(context)
                    ? ((width / 3) - 50)
                    : ((width / 5) - 50),
              ),
              height: 20,
              child: Image.asset('assets/images/brand${index + 1}.png'),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: ScreenHelper(
        mobile: _buildUi(context, MediaQuery.of(context).size.width * 0.8),
        tablet: _buildUi(context, kTabletMaxWidth),
        desktop: _buildUi(context, kDesktopMaxWidth),
      ),
    );
  }
}
