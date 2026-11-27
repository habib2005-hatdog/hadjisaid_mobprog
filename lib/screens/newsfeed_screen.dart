import 'package:flutter/material.dart';
import 'package:hadjisaid_mobprog/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> posts = [
      {
        'name': 'Clairo',
        'content': 'Bags',
        'date': '2 hours ago',
        'likes': 10,
        'image': false,
      },
      {
        'name': 'The 1975',
        'content': 'Somebody Else',
        'date': 'December 1, 2023',
        'likes': 3000,
        'image': true,
      },
      {
        'name': 'Ica Gibbs',
        'content':  'where to buy mangga',
        'date': 'October 11',
        'likes': 100,
        'image': false,
      },
      {
        'name': 'Habib Hadjisaid',
        'content': 'hihi',
        'date': 'December 2',
        'likes': 250,
        'image': false,
      },
      {
        'name': 'OLEG',
        'content': 'RESING 1v1 MARIKINA AREA.',
        'date': 'Yesterday',
        'likes': 45,
        'image': false,
      },
      {
        'name': 'GABO',
        'content': 'DI NA SALUHIN',
        'date': '3 hours ago',
        'likes': 120,
        'image': false,
      },
      {
        'name': 'DRE ',
        'content': 'Ibaba ang presyo ng yb',
        'date': '5 hours ago',
        'likes': 89,
        'image': false,
      },
      {
        'name': 'Habib Hadjisaid',
        'content': 'bente and a dream',
        'date': '1 day ago',
        'likes': 500,
        'image': false,
      },
      {
        'name': 'GABO',
        'content': 'Kahit ibigin ako mali.',
        'date': '2 days ago',
        'likes': 75,
        'image': false,
      },
      {
        'name': 'ICA GIBBS',
        'content': 'for sale nintendo switch.',
        'date': '3 days ago',
        'likes': 180,
        'image': false,
      },
    ];

    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];

        return NewsfeedCard(
          userName: post['name'],
          postContent: post['content'],
          date: post['date'],
          numOfLikes: post['likes'],
          hasImage: post['image'],
        );
      },
    );
  }
}