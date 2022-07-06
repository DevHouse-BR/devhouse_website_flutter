import 'package:flutter/material.dart';

import '../animations/entrance_fader.dart';
import '../utils/constants.dart';
import '../utils/dimensions.dart';

class ScrollToTop extends StatefulWidget {
  const ScrollToTop({Key? key}) : super(key: key);

  @override
  State<ScrollToTop> createState() => _ScrollToTopState();
}

class _ScrollToTopState extends State<ScrollToTop> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Positioned(
      right: -7,
      bottom: Dimensions.normalize(30),
      child: EntranceFader(
        offset: const Offset(0, 20),
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.025),
          child: InkWell(
            borderRadius: BorderRadius.circular(8.0),
            // onTap: () => scrollProvider.scroll(0),
            onTap: () {},
            onHover: (isHovering) {
              if (isHovering) {
                setState(() {
                  isHover = true;
                });
              } else {
                setState(() {
                  isHover = false;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                // TODO: apply reactive themes
                //color: appProvider.isDark ? Colors.white : Colors.black,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
                boxShadow: isHover
                    ? [
                        const BoxShadow(
                          blurRadius: 12.0,
                          offset: Offset(2.0, 3.0),
                        )
                      ]
                    : [],
              ),
              child: Icon(
                Icons.arrow_drop_up_outlined,
                color: kPrimaryColor,
                // TODO: apply reactive themes
                //color: AppTheme.c!.primary!,
                size: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
