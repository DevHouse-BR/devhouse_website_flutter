import 'package:flutter/material.dart';

import '../../components/footer.dart';
import '../../components/header.dart';
import '../../utils/globals.dart';
import 'sections/carousel.dart';
import 'sections/education.dart';
import 'sections/ios_app_add.dart';
import 'sections/portfolio_stats.dart';
import 'sections/resume.dart';
import 'sections/skills.dart';
import 'sections/sponsors.dart';
import 'sections/testimonials.dart';
import 'sections/website_ad.dart';

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
            const Resume(),
            const IosAppAd(),
            const SizedBox(height: 70),
            const WebsiteAd(),
            const PortfolioStats(),
            const SizedBox(height: 50),
            const Education(),
            const SizedBox(height: 50),
            const Skills(),
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
