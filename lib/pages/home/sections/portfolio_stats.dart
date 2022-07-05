import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../components/responsive.dart';
import '../../../models/stat_item.dart';
import '../../../utils/constants.dart';

final List<StatItem> stats = [
  StatItem(count: '43', text: 'Clients'),
  StatItem(count: '64+', text: 'Projects'),
  StatItem(count: '17', text: 'Awards'),
  StatItem(count: '10', text: 'Years\nExperience'),
];

class PortfolioStats extends Responsive {
  const PortfolioStats({Key? key}) : super(key: key);

  @override
  Widget buildUi(BuildContext context, double width) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ResponsiveWrapper(
          minWidth: width,
          maxWidth: width,
          defaultScale: false,
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: stats.map((e) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                width:
                    isMobile(context) ? ((width / 2) - 20) : ((width / 4) - 20),
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
        ),
      ),
    );
  }
}
