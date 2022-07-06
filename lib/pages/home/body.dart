part of 'home.dart';

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return SingleChildScrollView(
      controller: scrollProvider.controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Carousel(),
          const SizedBox(height: 20),
          const Resume(),
          const SizedBox(height: 50),
          const IosAppAd(),
          const SizedBox(height: 70),
          const WebsiteAd(),
          const SizedBox(height: 50),
          const PortfolioStats(),
          const SizedBox(height: 50),
          const Education(),
          const SizedBox(height: 50),
          const Skills(),
          const SizedBox(height: 50),
          const Sponsors(),
          const SizedBox(height: 50),
          const Testimonials(),
          const SizedBox(height: 50),
          const Footer(),
        ],
      ),
    );
  }
}
