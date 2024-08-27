import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:animated_movies_app/model/movies_model.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/movie_cover_and_play_button_widget.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/movie_info_and_rating.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/movies_cast.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/plot_widget.dart';
import 'package:animated_movies_app/screens/detail_screen/widgets/watch_now_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;
  const DetailScreen({
    super.key,
    required this.movie,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: UiConstants.backgroundGradient,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Movie cover image and play button widget
              MovieCoverAndPlayButton(
                size: size,
                movieImage: movie.coverImage,
              ),
              // Movie type and episode info
              MovieInfoAndRating(
                movieName: movie.name,
                movieTypeAndEpisode: movie.movieTypeAndEpisode,
                movieRating: movie.rating,
              ),

              // Movie plot widget
              PlotWidget(
                moviePlot: movie.plot,
              ),
              // Movies cast
              const MoviesCast(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: WatchNowButton(size: size),
    );
  }
}
