import 'package:flutter/material.dart';
import 'package:portfolio_site/components/animatorcircular_progressindicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "Python",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "CSS",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: "JavaScript",
        ),
      
        const AnimatedLinearProgressIndicator(
          percentage: 0.50,
          label: "Java",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "Visual Basic",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.60,
          label: "C++",
        ),
      ],
    );
  }
}