import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../components/mouse_region.dart';
import '../../../components/responsive.dart';
import '../../../models/education_item.dart';
import '../../../utils/typography.dart';

final List<EducationItem> educationList = [
  EducationItem(
    description: 'Mestrado em Engenharia de Software',
    linkName: 'www.devhouse.com.br',
    period: '2015 - PRESENTE',
  ),
  EducationItem(
    description: 'Pós-Graduação em Gestão de Projetos',
    linkName: 'www.devhouse.com.br',
    period: '2015 - 2020',
  ),
  EducationItem(
    description: 'Análise de Desenvolvimento de Software',
    linkName: 'www.devhouse.com.br',
    period: '2015 - 2020',
  ),
  EducationItem(
    description: 'Análise de Desenvolvimento de Software',
    linkName: 'www.devhouse.com.br',
    period: '2015 - 2020',
  ),
];

class Education extends Responsive {
  const Education({Key? key}) : super(key: key);

  @override
  Widget buildUi(BuildContext context, double width) {
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
        minWidth: width,
        maxWidth: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'EDUCATION',
              style: Typo.gOswaldWhite30w900.copyWith(height: 1.3),
            ),
            const SizedBox(height: 5),
            Wrap(
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Text(
                    'Mussum Ipsum, cacilds vidis litro abertis. Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Per aumento de cachacis, eu reclamis.',
                    style: Typo.defaltWhite.copyWith(height: 1.5),
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
                      .map((e) => SizedBox(
                            width: (constraints.maxWidth / 2) - 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.period,
                                  style: Typo.gOswaldWhite20Bold,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  e.description,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      Typo.defaltCaption.copyWith(height: 1.5),
                                ),
                                const SizedBox(height: 20),
                                DHMouseRegion(
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      e.linkName,
                                      style: Typo.defaltWhite
                                          .copyWith(height: 1.5),
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
}
