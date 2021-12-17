import 'package:countdowner/models/countdown_model.dart';
import 'package:flutter/material.dart';

class CountdownListElement extends StatelessWidget {
  final CountdownModel countdown;

  const CountdownListElement({Key? key, required this.countdown}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(countdown.coverUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(countdown.title, style: Theme.of(context).textTheme.headline4),
          Text(countdown.description),
        ],
      ),
    );
  }
}
