import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class Defalt {
  static TextStyle caption = const TextStyle().copyWith(
    color: kCaptionColor,
  );

  static TextStyle caption15 = const TextStyle().copyWith(
    color: kCaptionColor,
    fontSize: 15,
  );

  static TextStyle caption16 = const TextStyle().copyWith(
    color: kCaptionColor,
    fontSize: 16,
  );

  static TextStyle primaryBold = const TextStyle().copyWith(
    color: kPrimaryColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle primary36Bold = const TextStyle().copyWith(
    color: kPrimaryColor,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  static TextStyle white = const TextStyle().copyWith(
    color: Colors.white,
  );

  static TextStyle white13Bold = const TextStyle().copyWith(
    color: Colors.white,
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );

  static TextStyle white15 = const TextStyle().copyWith(
    color: Colors.white,
    fontSize: 15,
  );

  static TextStyle white16 = const TextStyle().copyWith(
    color: Colors.white,
    fontSize: 16,
  );
}

class GoogleOswald {
  static TextStyle defalt = GoogleFonts.oswald();

  static TextStyle caption15 = GoogleFonts.oswald().copyWith(
    color: kCaptionColor,
    fontSize: 15,
  );

  static TextStyle primary16w900 = GoogleFonts.oswald().copyWith(
    color: kPrimaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w900,
  );

  static TextStyle white16Bold = GoogleFonts.oswald().copyWith(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle white18Bold = GoogleFonts.oswald().copyWith(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle white18w900 = GoogleFonts.oswald().copyWith(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w900,
  );

  static TextStyle white20Bold = GoogleFonts.oswald().copyWith(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle white28w900 = GoogleFonts.oswald().copyWith(
    color: Colors.white,
    fontSize: 28,
    fontWeight: FontWeight.w900,
  );

  static TextStyle white30w900 = GoogleFonts.oswald().copyWith(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.w900,
  );

  static TextStyle white32Bold = GoogleFonts.oswald().copyWith(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static TextStyle white40w900 = GoogleFonts.oswald().copyWith(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.w900,
  );
}

class Typo {
  static final Map<String, TextStyle> _cache = <String, TextStyle>{};

  static TextStyle get defalt {
    return getStyleInstance('defalt');
  }

  static TextStyle get defaltCaption {
    return getStyleInstance('defaltCaption');
  }

  static TextStyle get defaltCaption15 {
    return getStyleInstance('defaltCaption15');
  }

  static TextStyle get defaltCaption16 {
    return getStyleInstance('defaltCaption16');
  }

  static TextStyle get defaltPrimaryBold {
    return getStyleInstance('defaltPrimaryBold');
  }

  static TextStyle get defaltPrimary36Bold {
    return getStyleInstance('defaltPrimary36Bold');
  }

  static TextStyle get defaltWhite {
    return getStyleInstance('defaltWhite');
  }

  static TextStyle get defaltWhite13Bold {
    return getStyleInstance('defaltWhite13Bold');
  }

  static TextStyle get defaltWhite15 {
    return getStyleInstance('defaltWhite15');
  }

  static TextStyle get defaltWhite16 {
    return getStyleInstance('defaltWhite16');
  }

  static TextStyle get gOswald {
    return getStyleInstance('gOswald');
  }

  static TextStyle get gOswaldCaption15 {
    return getStyleInstance('gOswaldCaption15');
  }

  static TextStyle get gOswaldPrimary16w900 {
    return getStyleInstance('gOswaldPrimary16w900');
  }

  static TextStyle get gOswaldWhite16Bold {
    return getStyleInstance('gOswaldWhite16Bold');
  }

  static TextStyle get gOswaldWhite18Bold {
    return getStyleInstance('gOswaldWhite18Bold');
  }

  static TextStyle get gOswaldWhite18w900 {
    return getStyleInstance('gOswaldWhite18w900');
  }

  static TextStyle get gOswaldWhite20Bold {
    return getStyleInstance('gOswaldWhite20Bold');
  }

  static TextStyle get gOswaldWhite28w900 {
    return getStyleInstance('gOswaldWhite28w900');
  }

  static TextStyle get gOswaldWhite30w900 {
    return getStyleInstance('gOswaldWhite30w900');
  }

  static TextStyle get gOswaldWhite32Bold {
    return getStyleInstance('gOswaldWhite32Bold');
  }

  static TextStyle get gOswaldWhite40w900 {
    return getStyleInstance('gOswaldWhite40w900');
  }

  static TextStyle getStyleInstance(String name) {
    return _cache.putIfAbsent(name, () {
      switch (name) {
        case 'defaltCaption':
          return Defalt.caption;
        case 'defaltCaption15':
          return Defalt.caption15;
        case 'defaltCaption16':
          return Defalt.caption16;
        case 'defaltPrimaryBold':
          return Defalt.primaryBold;
        case 'defaltPrimary36Bold':
          return Defalt.primary36Bold;
        case 'defaltWhite':
          return Defalt.white;
        case 'defaltWhite13Bold':
          return Defalt.white13Bold;
        case 'defaltWhite15':
          return Defalt.white15;
        case 'defaltWhite16':
          return Defalt.white16;
        case 'gOswald':
          return GoogleOswald.defalt;
        case 'gOswaldCaption15':
          return GoogleOswald.caption15;
        case 'gOswaldPrimary16w900':
          return GoogleOswald.primary16w900;
        case 'gOswaldWhite16Bold':
          return GoogleOswald.white16Bold;
        case 'gOswaldWhite18Bold':
          return GoogleOswald.white18Bold;
        case 'gOswaldWhite18w900':
          return GoogleOswald.white18w900;
        case 'gOswaldWhite20Bold':
          return GoogleOswald.white20Bold;
        case 'gOswaldWhite28w900':
          return GoogleOswald.white28w900;
        case 'gOswaldWhite30w900':
          return GoogleOswald.white30w900;
        case 'gOswaldWhite32Bold':
          return GoogleOswald.white32Bold;
        case 'gOswaldWhite40w900':
          return GoogleOswald.white40w900;
        default:
          return const TextStyle();
      }
    });
  }
}
