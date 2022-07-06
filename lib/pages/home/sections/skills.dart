import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../components/responsive.dart';
import '../../../models/skill_item.dart';
import '../../../utils/typography.dart';

List<SkillItem> skills = [
  SkillItem(skill: 'Dart', percentage: 70),
  SkillItem(skill: 'Flutter', percentage: 65),
  SkillItem(skill: 'Javascript', percentage: 95),
  SkillItem(skill: 'Node', percentage: 75),
  SkillItem(skill: 'C#', percentage: 50),
  SkillItem(skill: 'Python', percentage: 50),
  SkillItem(skill: 'PHP', percentage: 90),
  SkillItem(skill: 'Java', percentage: 80),
];

class Skills extends Responsive {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget buildUi(BuildContext context, double width) {
    return Center(
      child: ResponsiveWrapper(
        minWidth: width,
        maxWidth: width,
        child: Flex(
          direction: isMobile(context) ? Axis.vertical : Axis.horizontal,
          children: [
            Expanded(
              flex: isMobile(context) ? 0 : 2,
              child: Image.asset(
                'assets/images/person_small.png',
                width: 300,
              ),
            ),
            const SizedBox(width: 50),
            Expanded(
              flex: isMobile(context) ? 0 : 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SKILLS',
                    style: Typo.gOswaldWhite28w900.copyWith(height: 1.3),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Mussum Ipsum, cacilds vidis litro abertis. Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Per aumento de cachacis, eu reclamis.',
                    style: Typo.defaltCaption16.copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: skills
                        .map(
                          (e) => Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: e.percentage,
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    alignment: Alignment.center,
                                    color: Colors.white,
                                    height: 38,
                                    child: Text(e.skill),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 100 - e.percentage,
                                  child: const Divider(
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '${e.percentage}%',
                                  style: Typo.defaltWhite,
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
