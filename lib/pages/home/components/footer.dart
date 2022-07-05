import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../components/responsive.dart';
import '../../../models/footer_item.dart';
import '../../../utils/constants.dart';

final List<FooterItem> footerItems = [
  FooterItem(
    iconPath: 'assets/images/mappin.png',
    title: 'ADDRESS',
    text1: 'Av. Vicente Machado, 2505',
    text2: 'Curitiba, PR - Brazil',
  ),
  FooterItem(
    iconPath: 'assets/images/phone.png',
    title: 'PHONE',
    text1: '+55 (41) 99215-1301',
    text2: '',
  ),
  FooterItem(
    iconPath: 'assets/images/email.png',
    title: 'EMAIL',
    text1: 'leonardo@devhouse.com.br',
    text2: '',
  ),
  FooterItem(
    iconPath: 'assets/images/whatsapp.png',
    title: 'WHATSAPP',
    text1: '+55 (41) 99215-1301',
    text2: '',
  ),
];

class Footer extends Responsive {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget buildUi(BuildContext context, double width) {
    return Center(
      child: ResponsiveWrapper(
        minWidth: width,
        maxWidth: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: footerItems
                    .map(
                      (e) => SizedBox(
                        height: 120,
                        width: isMobile(context)
                            ? ((width / 2) - 20)
                            : ((width / 4) - 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(e.iconPath, width: 25),
                                const SizedBox(width: 15),
                                Text(
                                  e.title,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${e.text1}\n',
                                    style: const TextStyle(
                                      color: kPrimaryColor,
                                      height: 1.8,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '${e.text2}\n',
                                    style:
                                        const TextStyle(color: kPrimaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 20),
            Flex(
              direction: isMobile(context) ? Axis.vertical : Axis.horizontal,
              mainAxisAlignment: isMobile(context)
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Copyright (c) 2022 DevHouse Internet Software. All rights Reserved",
                    style: TextStyle(
                      color: kCaptionColor,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            color: kCaptionColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: const Text(
                        "|",
                        style: TextStyle(
                          color: kCaptionColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            color: kCaptionColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
