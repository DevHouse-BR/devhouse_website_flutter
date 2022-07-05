import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        Text(
          'PRODUCT DESIGNER',
          style: GoogleFonts.oswald(
            color: kPrimaryColor,
            fontWeight: FontWeight.w900,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 18),
        Text(
          'LEONARDO LIMA DE VASCONCELLOS',
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 40,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Fullstack developer, Based in Brazil',
          style: GoogleFonts.oswald(
            color: kCaptionColor,
            fontSize: 15,
            height: 1.0,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            Text(
              'Need a fully custom website?',
              style: GoogleFonts.oswald(
                color: kCaptionColor,
                fontSize: 15,
                height: 1.5,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  ' Got a project? Let\'s talk.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    height: 1.5,
                  ),
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
              child: const Text(
                'GET STARTED',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
);
