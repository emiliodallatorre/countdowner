import 'dart:math';

import 'package:countdowner/models/countdown_model.dart';

class CountdownProvider {
  static Future<List<CountdownModel>> getCountdowns() async {
    List<CountdownModel> countdowns = <CountdownModel>[];

    final Random randomTest = Random();

    for (int index = 0; index < 6; index++) {
      Duration duration = Duration(days: randomTest.nextInt(365 * 10));

      countdowns.add(CountdownModel(
        endTime: DateTime.now().add(duration),
        title: "Countdown di prova",
        description: "Descrizione di prova un po' più lunga dle titolo perché così deve essere",
        // coverUrl: "https://www.akamai.com/content/dam/site/im-demo/perceptual-standard.jpg?imbypass=true",
      ));
    }

    return Future.value(countdowns);
  }
}
