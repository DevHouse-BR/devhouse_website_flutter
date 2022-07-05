import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../components/responsive.dart';
import '../../../models/skill.dart';
import '../../../utils/constants.dart';

List<Skill> skills = [
  Skill(skill: 'Dart', percentage: 70),
  Skill(skill: 'Flutter', percentage: 65),
  Skill(skill: 'Javascript', percentage: 95),
  Skill(skill: 'Node', percentage: 75),
  Skill(skill: 'C#', percentage: 50),
  Skill(skill: 'Python', percentage: 50),
  Skill(skill: 'PHP', percentage: 90),
  Skill(skill: 'Java', percentage: 80),
];

class SkillSection extends Responsive {
  const SkillSection({Key? key}) : super(key: key);

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
                    style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Mussum Ipsum, cacilds vidis litro abertis. Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo! Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. Não sou faixa preta cumpadi, sou preto inteiris, inteiris. Per aumento de cachacis, eu reclamis.',
                    style: TextStyle(
                      color: kCaptionColor,
                      fontSize: 16,
                      height: 1.5,
                    ),
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
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
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
