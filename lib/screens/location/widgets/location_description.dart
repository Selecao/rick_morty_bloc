import 'package:flutter/material.dart';
import 'package:sc_03/data/network/models/location.dart';

class LocationDescription extends StatelessWidget {
  final Location location;

  LocationDescription(this.location);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 8.0),
          Text(
            location.name ?? 'None',
            style:
                Theme.of(context).textTheme.headline5?.copyWith(height: 1.33),
          ),
          Text(
            '${location.type ?? "Not available"} • ${location.measurements ?? "Not available"}',
            style: Theme.of(context).textTheme.caption?.copyWith(
                  letterSpacing: .5,
                  height: 1.33,
                ),
          ),
          Container(height: 32.0),
          Text(
            location.about ?? "Информация недоступна.",
            style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  height: 1.5,
                  letterSpacing: 0.25,
                ),
            textAlign: TextAlign.justify,
          ),
          Container(height: 36.0),
          Text(
            'Персонажи',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  height: 1.4,
                  letterSpacing: 0.15,
                ),
          ),
        ],
      ),
    );
  }
}
