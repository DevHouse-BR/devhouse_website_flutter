part of 'header.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DHMouseRegion(
      child: GestureDetector(
        onTap: () {},
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'DevHouse', style: Typo.gOswaldWhite32Bold),
              TextSpan(text: '.', style: Typo.defaltPrimary36Bold),
            ],
          ),
        ),
      ),
    );
  }
}
