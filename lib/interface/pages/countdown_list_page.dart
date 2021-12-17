import 'package:countdowner/interface/widget/countdown_list_element.dart';
import 'package:countdowner/models/countdown_model.dart';
import 'package:countdowner/resources/provider/countdown_provider.dart';
import 'package:flutter/material.dart';

class CountdownListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CountdownModel>>(
      future: CountdownProvider.getCountdowns(),
      builder: (BuildContext context, AsyncSnapshot<List<CountdownModel>> countdownsSnapshot) {
        if (countdownsSnapshot.hasData) {
          return ListView.builder(
            itemCount: countdownsSnapshot.data!.length,
            itemBuilder: (BuildContext context, int index) => CountdownListElement(
              countdown: countdownsSnapshot.data!.elementAt(index),
            ),
          );
        }

        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
