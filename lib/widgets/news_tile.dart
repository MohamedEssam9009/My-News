import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Image.network(
            'https://scanbot.io/wp-content/uploads/2022/03/flutter_tutorial_hero.jpg',
            height: 200.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          'Large Title should be places in this place large ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Text(
          'and here is the description of the news you place desc here',
          maxLines: 2,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14.0
          ),
        ),
      ],
    );
  }
}
