import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:devhouse_website_flutter/utils/constants.dart';
import 'package:devhouse_website_flutter/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class IosAppAd extends StatelessWidget {
  const IosAppAd({Key? key}) : super(key: key);

  Widget _buildUi(double width) {
    return ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.center,
        direction: width > 720 ? Axis.horizontal : Axis.vertical,
        children: [
          Expanded(
            // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
            flex: width > 720.0 ? 1 : 0,
            child: Image.asset(
              'assets/images/ios.png',
              width: width > 720.0 ? null : 350.0,
            ),
          ),
          Expanded(
            flex: width > 720.0 ? 1 : 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'IOS App',
                  style: GoogleFonts.oswald(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'UNIVERSAL\nSMART HOME APP',
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mussum Ipsum, cacilds vidis litro abertis. Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Per aumento de cachacis, eu reclamis.',
                  style: TextStyle(
                    color: kCaptionColor,
                    fontSize: 15,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 28),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              'EXPLORE MORE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(horizontal: 28),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: kPrimaryColor,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              'NEXT APP',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ScreenHelper(
        mobile: _buildUi(getMobileMaxWidth(context)),
        tablet: _buildUi(kTabletMaxWidth),
        desktop: _buildUi(kDesktopMaxWidth),
      ),
    );
  }
}
