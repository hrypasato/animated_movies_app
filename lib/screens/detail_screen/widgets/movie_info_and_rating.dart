import 'package:animated_movies_app/model/movies_model.dart';
import 'package:flutter/material.dart';

// Move info and star rating used in details screen
class MovieInfoAndRating extends StatelessWidget {
  final Movie movie;

  const MovieInfoAndRating({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Movie name
        Text(
          movie.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        // Movie type and no. of episodes
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            movie.movieTypeAndEpisode,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
        ),
        // Ratings stars
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: SizedBox(
            height: 40,
            child: Align(
              alignment: Alignment.center,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Icon(
                    Icons.star,
                    size: 32,
                    color: index < movie.rating ? Colors.amber : Colors.grey,
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
