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
                
                SizedBox(height: defaultPadding,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      value: 50,
                      text: "+"
                    ),
                    label: "Stars"
                    )
                  ],
                )
              ],
          )
          : const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              Highlight(
                  counter: AnimatedCounter(
                    value: 30,
                    text: "+",
                  ),
                  label: "GitHub Repositories"
              ),
              Highlight(
                  counter: AnimatedCounter(
                    value: 50,
                    text: "+",
                  ),
                  label: "Stars"
              ),
            ],
          ) 
    );
  }
}