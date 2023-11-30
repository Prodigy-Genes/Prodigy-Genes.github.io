import 'package:flutter/material.dart';
import 'package:portfolio_site/components/animatedcounter.dart';
import 'package:portfolio_site/responsive.dart';

import '../../../constants.dart';
import 'highlights.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlight(
                      counter: AnimatedCounter(
                      value: 119,
                      text: "K+"
                    ),
                    label: "Subscribers",
                    ),
                    Highlight(
                      counter: AnimatedCounter(
                      value: 40,
                      text: "+"
                    ),
                    label: "Videos",
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlight(
                      counter: AnimatedCounter(
                      value: 30,
                      text: "+"
                    ),
                    label: "GitHub Repositories"
                    ),
                    Highlight(
                      counter: AnimatedCounter(
                      value: 13,
                      text: "K+"
                    ),
                    label: "Stars"
                    )
                  ],
                )
              ],
          )
          : const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Highlight(
                  counter: AnimatedCounter(
                    value: 119,
                    text: "K+",
                  ),
                  label: "Subscribers"
              ),
              Highlight(
                  counter: AnimatedCounter(
                    value: 40,
                    text: "+",
                  ),
                  label: "Videos"
              ),
              Highlight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: "+",
                  ),
                  label: "GitHub Repositories"
              ),
              Highlight(
                  counter: AnimatedCounter(
                    value: 13,
                    text: "K+",
                  ),
                  label: "Stars"
              ),
            ],
          ) 
    );
  }
}