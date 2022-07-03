import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../models/education.dart';
import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

final List<Education> educationList = [
  Education(
    description: 'Mestrado em Engenharia de Software',
    linkName: 'www.devhouse.com.br',
    period: '2015 - PRESENTE',
  ),
  Education(
    description: 'Pós-Graduação em Gestão de Projetos',
    linkName: 'www.devhouse.com.br',
    period: '2015 - 2020',
  ),
  Education(
    description: 'Análise de Desenvolvimento de Software',
    linkName: 'www.devhouse.com.br',
    period: '2015 - 2020',
  ),
  Education(
    description: 'Análise de Desenvolvimento de Software',
    linkName: 'www.devhouse.com.br',
    period: '2015 - 2020',
  ),
];

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
        minWidth: width,
        maxWidth: width,
        defaultScale: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'EDUCATION',
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 5),
            Wrap(
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: const Text(
                    'Mussum Ipsum, cacilds vidis litro abertis. Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Per aumento de cachacis, eu reclamis.',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            LayoutBuilder(
              builder: (context, constraints) {
                return Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: educationList
                      .map((e) => Container(
                            width: (constraints.maxWidth / 2) - 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.period,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  e.description,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: kCaptionColor,
                                    height: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      e.linkName,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        height: 1.5,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 40),
                              ],
                            ),
                          ))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(1000),
      tablet: _buildUi(800),
      mobile: _buildUi(MediaQuery.of(context).size.width * 0.8),
    );
  }
}
