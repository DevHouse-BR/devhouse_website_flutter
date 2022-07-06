part of 'header.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: ListView.separated(
            itemBuilder: (context, index) {
              if (headerItems[index].isButton) {
                return DHMouseRegion(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    decoration: BoxDecoration(
                      color: kDangerColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: headerItems[index].onTap,
                      child: Text(
                        headerItems[index].title,
                        style: Typo.defaltWhite13Bold,
                      ),
                    ),
                  ),
                );
              } else {
                return ListTile(
                  title: Text(
                    headerItems[index].title,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
            itemCount: headerItems.length,
          ),
        ),
      ),
    );
  }
}
