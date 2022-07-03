import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../models/stat.dart';
import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

final List<Stat> stats = [
  Stat(count: '43', text: 'Clients'),
  Stat(count: '64+', text: 'Projects'),
  Stat(count: '17', text: 'Awards'),
  Stat(count: '10', text: 'Years\nExperience'),
];

class PortfolioStats extends StatelessWidget {
  const PortfolioStats({Key? key}) : super(key: key);

  Widget _buildUi(BuildContext context, double width) {
    return ResponsiveWrapper(
      minWidth: width,
      maxWidth: width,
      defaultScale: false,
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: stats.map((e) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            width: ScreenHelper.isMobile(context)
                ? ((width / 2) - 20)
                : ((width / 4) - 20),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  e.count,
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  e.text,
                  style: const TextStyle(
                    color: kCaptionColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ScreenHelper(
        mobile: _buildUi(context, MediaQuery.of(context).size.width * 0.8),
        tablet: _buildUi(context, kTabletMaxWidth),
        desktop: _buildUi(context, kDesktopMaxWidth),
      ),
    );
  }
}
