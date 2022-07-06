part of 'header.dart';

class DesktopMenu extends StatelessWidget {
  const DesktopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [
        Condition.largerThan(breakpoint: 800),
      ],
      child: Row(
        children: headerItems.map((item) {
          if (item.isButton) {
            return DHMouseRegion(
              child: Container(
                decoration: BoxDecoration(
                  color: kDangerColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: TextButton(
                  onPressed: item.onTap,
                  child: Text(item.title, style: Typo.defaltWhite13Bold),
                ),
              ),
            );
          } else {
            return DHMouseRegion(
              child: Container(
                margin: const EdgeInsets.only(right: 30),
                child: GestureDetector(
                  onTap: item.onTap,
                  child: Text(item.title, style: Typo.defaltWhite13Bold),
                ),
              ),
            );
          }
        }).toList(),
      ),
    );
  }
}
