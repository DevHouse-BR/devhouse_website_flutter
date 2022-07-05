import 'package:flutter/material.dart';

import '../../utils/globals.dart';
import 'components/carousel.dart';
import 'components/cv_section.dart';
import 'components/education_section.dart';
import 'components/footer.dart';
import 'components/header.dart';
import 'components/ios_app_add.dart';
import 'components/portfolio_stats.dart';
import 'components/skill_section.dart';
import 'components/sponsors.dart';
import 'components/testimonials.dart';
import 'components/website_ad.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: const MobileMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            Carousel(),
            const SizedBox(height: 20),
            const CvSection(),
            const IosAppAd(),
            const SizedBox(height: 70),
            const WebsiteAd(),
            const PortfolioStats(),
            const SizedBox(height: 50),
            const EducationSection(),
            const SizedBox(height: 50),
            const SkillSection(),
            const SizedBox(height: 50),
            const Sponsors(),
            const SizedBox(height: 50),
            const Testimonials(),
            const SizedBox(height: 50),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
