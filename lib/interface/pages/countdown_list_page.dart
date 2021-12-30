import 'package:countdowner/interface/widget/countdown_list_element.dart';
import 'package:countdowner/models/countdown_model.dart';
import 'package:countdowner/references.dart';
import 'package:countdowner/resources/provider/countdown_provider.dart';
import 'package:flutter/material.dart';

class CountdownListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 160.0,
        ),
        SliverToBoxAdapter(
          child: FutureBuilder<List<CountdownModel>>(
            future: CountdownProvider.getCountdowns(),
            builder: (BuildContext context, AsyncSnapshot<List<CountdownModel>> countdownsSnapshot) {
              if (countdownsSnapshot.hasData) {
                return ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(References.generalPadding),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: countdownsSnapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) => CountdownListElement(
                    countdown: countdownsSnapshot.data!.elementAt(index),
                  ),
                  separatorBuilder: (BuildContext context, int index) => SizedBox(height: References.generalPadding),
                );
              }

              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}
