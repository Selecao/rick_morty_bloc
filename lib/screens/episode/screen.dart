import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/transparent_app_bar.dart';
import 'package:sc_03/screens/episode/bloc/episode_bloc.dart';
import 'package:sc_03/screens/episode/widgets/episode_characters.dart';
import 'package:sc_03/screens/episode/widgets/episode_description.dart';
import 'package:sc_03/screens/episode/widgets/episode_image.dart';

class EpisodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<EpisodeBloc>(
      create: (BuildContext context) =>
          EpisodeBloc()..add(EpisodeEvent.initial()),
      child: BlocConsumer<EpisodeBloc, EpisodeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => CircularProgressIndicator(),
            data: (_data) => Scaffold(
              extendBodyBehindAppBar: true,
              appBar: TransparentAppBar(),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    EpisodeImage(
                      image: _data.selectedEpisode.image,
                      onPressed: () {},
                    ),
                    EpisodeDescription(_data.selectedEpisode),

                    /// TODO: fix
                    //EpisodeCharacters(_data.selectedEpisode.title),
                  ],
                ),
              ),
            ),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
