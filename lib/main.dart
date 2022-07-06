import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'pages/home/home.dart';
import 'provider/scroll_provider.dart';
import 'utils/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const DevHouse());
}

class DevHouse extends StatelessWidget {
  const DevHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
      ],
      child: const Application(),
    );
  }
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevHouse - Internet Software',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
        platform: TargetPlatform.android,
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        canvasColor: kBackgroundColor,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.resize(760, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.resize(2460, name: '4K'),
        ],
        background: Container(color: kBackgroundColor),
      ),
      home: const Home(),
    );
  }
}
