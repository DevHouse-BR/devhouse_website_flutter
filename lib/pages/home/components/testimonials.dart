import 'package:devhouse_website_flutter/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../models/testimonial.dart';
import '../../../utils/constants.dart';

final List<Testimonial> testimonials = [
  Testimonial(
    text:
        'Mussum Ipsum, cacilds vidis litro abertis. Todo mundo vê os porris que'
        ' eu tomo, mas ninguém vê os tombis que eu levo! Praesent malesuada'
        ' urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. '
        'Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Per '
        'aumento de cachacis, eu reclamis.',
    occupation: 'Product Designer',
    personName: 'DANIEL CUNNINGHAM',
    profilePhoto: 'assets/images/female.png',
  ),
  Testimonial(
    text:
        'Mussum Ipsum, cacilds vidis litro abertis. Todo mundo vê os porris que'
        ' eu tomo, mas ninguém vê os tombis que eu levo! Praesent malesuada'
        ' urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. '
        'Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Per '
        'aumento de cachacis, eu reclamis.',
    occupation: 'Product Designer',
    personName: 'JET SET',
    profilePhoto: 'assets/images/male.png',
  ),
];

class Testimonials extends StatelessWidget {
  const Testimonials({Key? key}) : super(key: key);

  Widget _buildUi(BuildContext context, double width) {
    return Center(
      child: ResponsiveWrapper(
        minWidth: width,
        maxWidth: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TESTIMONIALS',
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              constraints: const BoxConstraints(maxWidth: 400),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'This is the portfolio section. There is a lot of work here.',
                      style: TextStyle(color: Colors.white, height: 1.8),
                    ),
                    TextSpan(
                      text: ' Click here to contact us.',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                        height: 1.8,
                      ),
                    ),
                    TextSpan(
                      text: ' Please subscribe to my youtube channel. :-)',
                      style: TextStyle(color: Colors.white, height: 1.8),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 45),
            Flex(
              direction: ScreenHelper.isMobile(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              children: testimonials
                  .map(
                    (e) => Expanded(
                      flex: ScreenHelper.isMobile(context) ? 0 : 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Image.asset('assets/images/quote.png', width: 50),
                            const SizedBox(height: 15),
                            Text(
                              e.text,
                              style: const TextStyle(
                                color: kCaptionColor,
                                height: 1.8,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage(e.profilePhoto),
                                ),
                                const SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.personName,
                                      style: GoogleFonts.oswald(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      e.occupation,
                                      style: const TextStyle(
                                        color: kCaptionColor,
                                        height: 1.8,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      mobile: _buildUi(context, getMobileMaxWidth(context)),
      tablet: _buildUi(context, kTabletMaxWidth),
      desktop: _buildUi(context, kDesktopMaxWidth),
    );
  }
}
