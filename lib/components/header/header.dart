import 'package:devhouse_website_flutter/utils/typography.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../models/header_item.dart';
import '../../utils/constants.dart';
import '../../utils/globals.dart';
import '../mouse_region.dart';
import '../responsive.dart';

part 'desktop_menu.dart';
part 'header_logo.dart';
part 'mobile_menu.dart';

final List<HeaderItem> headerItems = [
  HeaderItem(
    title: 'HOME',
    onTap: () {},
  ),
  HeaderItem(
    title: 'MY INTRO',
    onTap: () {},
  ),
  HeaderItem(
    title: 'SERVICES',
    onTap: () {},
  ),
  HeaderItem(
    title: 'PORTFOLIO',
    onTap: () {},
  ),
  HeaderItem(
    title: 'TESTIMONIALS',
    onTap: () {},
  ),
  HeaderItem(
    title: 'BLOG',
    onTap: () {},
  ),
  HeaderItem(
    title: 'HIRE ME',
    isButton: true,
    onTap: () {},
  ),
];

class Header extends Responsive {
  const Header({Key? key}) : super(key: key);

  Widget _mobileMenuIcon() {
    return GestureDetector(
      onTap: () {
        Globals.scaffoldKey.currentState?.openEndDrawer();
      },
      child: const Icon(
        Icons.menu,
        color: Colors.white,
        size: 28,
      ),
    );
  }

  @override
  Widget buildUi(BuildContext context, double width) {
    final mobile = Responsive.isMobile(context);

    Widget header = Material(
      color: Colors.black54,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HeaderLogo(),
            mobile ? _mobileMenuIcon() : const DesktopMenu(),
          ],
        ),
      ),
    );
    if (mobile) {
      header = SafeArea(child: header);
    }
    return header;
  }
}
