import 'package:flutter/material.dart';

import '../../../constants.dart';

class Highlight extends StatelessWidget {
  const Highlight ({
    super.key,
    required this.counter,
    this.label,
  });

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        counter,
        const SizedBox(width: defaultPadding / 2,),
        Text(label!, style: Theme.of(context).textTheme.titleSmall,),
      ],
    );
  } 
}