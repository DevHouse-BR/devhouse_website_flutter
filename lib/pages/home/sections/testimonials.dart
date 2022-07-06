import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../components/responsive.dart';
import '../../../models/testimonial_item.dart';
import '../../../utils/typography.dart';

final List<TestimonialItem> testimonials = [
  TestimonialItem(
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
  TestimonialItem(
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

class Testimonials extends Responsive {
  const Testimonials({Key? key}) : super(key: key);

  @override
  Widget buildUi(BuildContext context, double width) {
    final bool isMobile = Responsive.isMobile(context);
    return Center(
      child: ResponsiveWrapper(
        minWidth: width,
        maxWidth: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TESTIMONIALS',
              style: Typo.gOswaldWhite30w900.copyWith(height: 1.3),
            ),
            const SizedBox(height: 5),
            Container(
              constraints: const BoxConstraints(maxWidth: 400),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'This is the portfolio section.'
                          ' There is a lot of work here.',
                      style: Typo.defaltWhite.copyWith(height: 1.8),
                    ),
                    TextSpan(
                      text: ' Click here to contact us.',
                      style: Typo.defaltPrimaryBold.copyWith(height: 1.8),
                    ),
                    TextSpan(
                      text: ' Please subscribe to my youtube channel. :-)',
                      style: Typo.defaltWhite.copyWith(height: 1.8),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 45),
            Flex(
              direction: isMobile ? Axis.vertical : Axis.horizontal,
              children: testimonials
                  .map(
                    (e) => Expanded(
                      flex: isMobile ? 0 : 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Image.asset('assets/images/quote.png', width: 50),
                            const SizedBox(height: 15),
                            Text(
                              e.text,
                              style: Typo.defaltCaption.copyWith(height: 1.8),
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
                                      style: Typo.gOswaldWhite16Bold,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      e.occupation,
                                      style: Typo.defaltCaption
                                          .copyWith(height: 1.8),
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
}
