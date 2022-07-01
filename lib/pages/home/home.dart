import 'package:devhouse_website_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:devhouse_website_flutter/utils/globals.dart';
import 'components/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: ListView.separated(
              itemBuilder: (context, index) {
                if (headerItems[index].isButton) {
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
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
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Header(),
          ],
        ),
      ),
    );
  }
}
