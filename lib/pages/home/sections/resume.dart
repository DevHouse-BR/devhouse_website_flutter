import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../components/responsive.dart';
import '../../../models/resume_item.dart';
import '../../../utils/constants.dart';

final List<ResumeItem> designProcesses = [
  ResumeItem(
    title: 'DESIGN',
    imagePath: 'assets/images/design.png',
    subTitle: 'A fullstack all around designer that may or may not include a '
        'guide for specific creative',
  ),
  ResumeItem(
    title: 'DEVELOP',
    imagePath: 'assets/images/develop.png',
    subTitle: 'A fullstack all around developer that may or may not include a '
        'guide for specific creative',
  ),
  ResumeItem(
    title: 'WRITE',
    imagePath: 'assets/images/write.png',
    subTitle: 'A fullstack all around writer that may or may not include a '
        'guide for specific creative',
  ),
  ResumeItem(
    title: 'PROMOTE',
    imagePath: 'assets/images/promote.png',
    subTitle: 'A fullstack all around promoter that may or may not include a '
        'guide for specific creative',
  )
];

class Resume extends Responsive {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget buildUi(BuildContext context, double width) {
    return Center(
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'BETTER DESIGN,\nBETTER EXPERIENCES',
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    height: 1.8,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      'DOWNLOAD CV',
                      style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            LayoutBuilder(
              builder: (context, constraints) {
                return ResponsiveGridView.builder(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  alignment: Alignment.topCenter,
                  gridDelegate: ResponsiveGridDelegate(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    maxCrossAxisExtent: isTablet(context) || isMobile(context)
                        ? (constraints.maxWidth / 2)
                        : 250,
                    childAspectRatio: isDesktop(context)
                        ? 1
                        : MediaQuery.of(context).size.aspectRatio * 1.5,
                  ),
                  itemCount: designProcesses.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              designProcesses[index].imagePath,
                              width: 40,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              designProcesses[index].title,
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Text(
                          designProcesses[index].subTitle,
                          style: const TextStyle(
                            color: kCaptionColor,
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
