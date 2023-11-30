import 'package:flutter/material.dart';
import 'package:portfolio_site/screens/home/components/highlightsinfo.dart';
import 'package:portfolio_site/screens/main/components/side_menu.dart';
import 'package:portfolio_site/screens/main/mainscreen.dart';

import 'components/homebanner.dart';
import 'components/myprojects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen (
      children: [
        HomeBanner(),
        HighLightInfo(),
        MyProjects(),
      ]
    );
  }
}