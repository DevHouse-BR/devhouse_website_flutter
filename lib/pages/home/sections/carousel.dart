import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../components/responsive.dart';
import '../../../models/carousel_items.dart';

class Carousel extends Responsive {
  final CarouselController carouselController = CarouselController();

  Carousel({Key? key}) : super(key: key);

  Widget _mobile(double width, Widget text) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: width,
      ),
      child: text,
    );
  }

  Widget _deskTablet(double width, double height, Widget text, Widget image) {
    return ResponsiveWrapper(
      minWidth: width,
      maxWidth: width,
      child: Container(
        constraints: BoxConstraints(
          minHeight: height,
        ),
        child: Row(
          children: [
            Expanded(child: text),
            Expanded(child: image),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildUi(BuildContext context, double width) {
    final mobile = isMobile(context);
    final height = MediaQuery.of(context).size.height;

    double carouselContainerHeight = 0;
    if (mobile) {
      carouselContainerHeight = height * 0.7;
    } else {
      carouselContainerHeight = height * 0.85;
    }

    return SizedBox(
      height: carouselContainerHeight,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                viewportFraction: 1,
                scrollPhysics: const NeverScrollableScrollPhysics(),
                height: carouselContainerHeight,
              ),
              items: List.generate(
                carouselItems.length,
                (index) => Builder(
                  builder: (context) {
                    return mobile
                        ? _mobile(width, carouselItems[index].text)
                        : _deskTablet(
                            width,
                            carouselContainerHeight,
                            carouselItems[index].text,
                            carouselItems[index].image,
                          );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
