import 'package:flutter/material.dart';

class UpdatingDuration extends StatelessWidget {
  final DateTime dateTime;
  final TextStyle? style;

  const UpdatingDuration({Key? key, required this.dateTime, this.style}) : super(key: key);

  Duration get remaining => dateTime.difference(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(seconds: 1)),
      builder: (BuildContext context, AsyncSnapshot data) {
        return Text(
          remaining.toString(),
          style: style,
        );
      },
    );
  }
}
