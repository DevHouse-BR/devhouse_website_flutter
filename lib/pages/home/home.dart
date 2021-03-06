import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/footer.dart';
import '../../components/header/header.dart';
import '../../components/responsive.dart';
import '../../components/scroll_to_top.dart';
import '../../provider/scroll_provider.dart';
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

part 'body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    return Scaffold(
      key: Globals.scaffoldKey,
      extendBodyBehindAppBar: true,
      endDrawer: isMobile ? const MobileMenu() : null,
      body: SafeArea(
        child: Stack(
          children: const [
            _Body(),
            ScrollToTop(),
            Header(),
          ],
        ),
      ),
    );
  }
}
