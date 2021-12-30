import 'package:countdowner/interface/widget/updating_duration.dart';
import 'package:countdowner/models/countdown_model.dart';
import 'package:countdowner/references.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:random_color/random_color.dart';

class CountdownListElement extends StatelessWidget {
  final CountdownModel countdown;

  const CountdownListElement({Key? key, required this.countdown}) : super(key: key);

  static RandomColor colorRandomizer = RandomColor();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PaletteGenerator>(
        future: (countdown.coverUrl == null
            ? PaletteGenerator.fromColors(<PaletteColor>[
                PaletteColor(colorRandomizer.randomColor(), 1),
              ])
            : PaletteGenerator.fromImageProvider(NetworkImage(countdown.coverUrl!))) as Future<PaletteGenerator>,
        builder: (BuildContext context, AsyncSnapshot<PaletteGenerator> paletteSnapshot) {
          return Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              image: countdown.coverUrl == null
                  ? null
                  : DecorationImage(
                      image: NetworkImage(countdown.coverUrl!),
                      fit: BoxFit.cover,
                    ),
              borderRadius: BorderRadius.all(Radius.circular(References.generalRadius)),
            ),
            child: Container(
              color: paletteSnapshot.data == null ? null : paletteSnapshot.data!.dominantColor!.color.withOpacity(0.4),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    UpdatingDuration(
                      dateTime: countdown.endTime,
                      style: Theme.of(context).textTheme.headline3?.copyWith(
                            color: paletteSnapshot.data?.vibrantColor?.titleTextColor,
                          ),
                    ),
                    Text(
                      countdown.title,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: paletteSnapshot.data?.vibrantColor?.titleTextColor,
                          ),
                    ),
                    Text(
                      countdown.description,
                      style: TextStyle(
                        color: paletteSnapshot.data?.vibrantColor?.bodyTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
