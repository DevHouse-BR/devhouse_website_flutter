import 'package:devhouse_website_flutter/utils/typography.dart';
import 'package:flutter/material.dart';

import '../components/mouse_region.dart';
import '../utils/constants.dart';
import 'carousel_item.dart';

List<CarouselItem> carouselItems = List.generate(
  5,
  (index) => CarouselItem(
    image: Image.asset(
      'assets/images/person.png',
      fit: BoxFit.contain,
      isAntiAlias: true,
      filterQuality: FilterQuality.high,
    ),
    text: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('PRODUCT DESIGNER', style: Typo.gOswaldPrimary16w900),
        const SizedBox(height: 18),
        Text(
          'LEONARDO LIMA DE VASCONCELLOS',
          style: Typo.gOswaldWhite40w900.copyWith(height: 1.3),
        ),
        const SizedBox(height: 10),
        Text(
          'Fullstack developer, Based in Brazil',
          style: Typo.gOswaldCaption15.copyWith(height: 1),
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            Text(
              'Need a fully custom website?',
              style: Typo.gOswaldCaption15.copyWith(height: 1.5),
            ),
            GestureDetector(
              onTap: () {},
              child: DHMouseRegion(
                child: Text(
                  ' Got a project? Let\'s talk.',
                  style: Typo.defaltWhite15.copyWith(height: 1.5),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: TextButton(
              onPressed: () {},
              child: Text('GET STARTED', style: Typo.defaltWhite13Bold),
            ),
          ),
        ),
      ],
    ),
  ),
);
